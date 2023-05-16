<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registrar.aspx.vb" Inherits="Fase_4_Apoyo_Didactico.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrar Estudiante</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;600;700&display=swap');

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Montserrat', sans-serif;
            font-size: 16px;
            line-height: 1.2;
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 40px;
        }

        .formContainer {
            width: 100%;
            max-width: 600px;
            margin: 0 auto;
            padding: 40px;
            text-align: center;
            background-color: #ebebeb;
            border-radius: 10px;
            border: 1px solid #ccc;
        }

        .formContainer h1 {
            font-size: 30px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        .formContainer p {
            font-size: 18px;
            font-weight: 400;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            font-weight: 600;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            outline: none;
            font-size: 16px;
            font-family: 'Montserrat', sans-serif;
        }

        .enlaces {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 20px;
        }

        .boton {
            display: block;
            margin-top: 20px;
            color: #fff;
            background-color: #064e9b;
            border: none;
            outline: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            width: 100%;
            font-family: 'Montserrat', sans-serif;
        }

        .boton:hover {
            background-color: #053e7a;
        }

        .text-danger {
            background-color: crimson;
            width: 100%;
            display: block;
            padding: 10px;
            border-radius: 5px;
            color: #fff;
            font-size: 16px;
            font-weight: 600;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="formContainer">
        <h1>Registro de estudiantes</h1>
        <p>Por favor, ingrese los datos solicitados para registrar un nuevo estudiante.</p>
        <asp:Label ID="LblMensaje" Visible="false" runat="server" CssClass="text-danger" Text="Error: "></asp:Label>
        <div>
            <div class="form-group">
                <label for="txtCodigo">Número de identificación</label>
                <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" placeholder="Ingrese el número de identificación" type="number"></asp:TextBox>  
            </div>
            <div class="form-group">
                <label for="txtNombre">Nombres del estudiante</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" placeholder="Ingrese los nombres del estudiante" type="text"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtApellido">Apellidos del estudiante</label>
                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" placeholder="Ingrese los apellidos del estudiante" type="text"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtCiudad">Ciudad de residencia</label>
                <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control" placeholder="Ingrese la ciudad de residencia" type="text"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPrograma">Programa académico</label>
                <asp:TextBox ID="txtPrograma" runat="server" CssClass="form-control" placeholder="Ingrese el programa académico" type="text"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtCorreo">Correo electrónico</label>
                <asp:TextBox ID="txtCorreo" runat="server" CssClass="form-control" placeholder="Ingrese el correo electrónico" type="email"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Contraseña</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Ingrese la contraseña" type="password"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtConfirmarPassword">Confirmar contraseña</label>
                <asp:TextBox ID="txtConfirmarPassword" runat="server" CssClass="form-control" placeholder="Confirme la contraseña" type="password"></asp:TextBox>
            </div>
            <div class="enlaces">
                <asp:HyperLink ID="lnkRecuperar" runat="server" NavigateUrl="~/Auth/RecuperarContrasena.aspx">¿Olvidó su contraseña?</asp:HyperLink>
                <asp:HyperLink ID="lnkIniciarSesion" runat="server" NavigateUrl="~/Auth/IniciarSesion.aspx">Ya tengo una cuenta</asp:HyperLink>
            </div>
            <asp:Button ID="btnRegistrar" runat="server" CssClass="boton" Text="Registrar estudiante" OnClick="btnRegistrar_Click" />
        </div>
    </form>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="IniciarSesion.aspx.vb" Inherits="Fase_4_Apoyo_Didactico.IniciarSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Iniciar Sesión</title>
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

        .text-success {
            background-color: rgb(40, 170, 99);
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
        <h1>Iniciar Sesión</h1>
        <p>
            Para acceder a la plataforma por favor ingrese sus credenciales,
            si aún no tiene una cuenta por favor registrese en el enlace inferior
            o si olvido su contraseña puede recuperarla en el enlace inferior.
        </p>
        <asp:Label ID="LblMensaje" runat="server" CssClass="text-success" Visible="false" Text="Mensaje"></asp:Label>
        <div>
            <div class="form-group">
                <label for="txtUsuario">Correo o número de identificación</label>
                <asp:TextBox ID="txtUsuario" runat="server" placeholder="Correo o número de identificación"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="txtPassword">Contraseña</label>
                <asp:TextBox ID="txtPassword" runat="server" placeholder="Contraseña" type="password"></asp:TextBox>
            </div>
            <div class="enlaces">
                <asp:HyperLink ID="lnkRecuperar" runat="server" NavigateUrl="~/Auth/RecuperarContrasena.aspx">¿Olvidó su contraseña?</asp:HyperLink>
                <asp:HyperLink ID="lnkRegistrar" runat="server" NavigateUrl="~/Auth/Registrar.aspx">¿No tiene una cuenta? Registrese</asp:HyperLink>
            </div>
            <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesión" CssClass="boton" OnClick="btnIniciarSesion_Click" />
        </div>
    </form>
</body>
</html>

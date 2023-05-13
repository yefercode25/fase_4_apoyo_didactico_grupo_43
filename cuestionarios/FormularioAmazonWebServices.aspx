<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="FormularioAmazonWebServices.aspx.vb" Inherits="Fase_4_Apoyo_Didactico.FormularioAmazonWebServices" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Cuestionario - Amazon Web Services</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            box-sizing: inherit;
            min-height: 90vh;
            min-width: 100vw;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
        }

        input {
            padding: 10px;
            border-radius: 5px;
            border: none;
            background-color: #1836df;
            color: white;
            margin-top: 20px;
        }

        input:hover {
            cursor: pointer;
            background-color: #0f1f8d;
        }

        input:disabled {
            background-color: #a0a0a0;
        }
    </style>
</head>
<body>
    <div style="max-width: 600px;">
        <h1 style="text-align: center;">Pon a prueba tus conocimientos sobre Amazon Web Services</h1>
        <p style="text-align: center;">
            Después de haber explorado las diferentes secciones dispuestas para el aprendizaje
            es momento de poner a prueba tus conocimientos y evaluar tus nuevos conocimientos.
        </p>
        <form runat="server">
            <asp:Label ID="LblMensaje" runat="server" Visible="false" style="color: white; border-radius: 5px; font-weight: bold; text-align: center; padding: 20px; background-color: crimson; display: block;">Para finalizar el formulario debe responder todas las preguntas.</asp:Label>
            <asp:MultiView ID="MvAWSCuestionario" runat="server" ActiveViewIndex="0">
                <asp:View ID="VPregunta1" runat="server">
                    <h2>1. ¿Cuál de los siguientes servicios proporciona escalabilidad, seguridad y rendimiento para almacenar y recuperar datos desde cualquier lugar de la web?</h2>
                    <asp:RadioButtonList ID="RBLPregunta1" runat="server">
                        <asp:ListItem Value="a">a) Amazon EC2</asp:ListItem>
                        <asp:ListItem Value="b">b) Amazon RDS</asp:ListItem>
                        <asp:ListItem Value="c">c) Amazon CloudFront</asp:ListItem>
                        <asp:ListItem Value="d">d) Amazon S3</asp:ListItem>
                    </asp:RadioButtonList>  
                </asp:View>
                <asp:View ID="VPregunta2" runat="server">
                    <h2>2. ¿Qué servicio de AWS permite a los usuarios ejecutar aplicaciones en máquinas virtuales escalables?</h2>
                    <asp:RadioButtonList ID="RBLPregunta2" runat="server">
                        <asp:ListItem Value="a">a) Amazon S3</asp:ListItem>
                        <asp:ListItem Value="b">b) Amazon CloudFront</asp:ListItem>
                        <asp:ListItem Value="c">c) Amazon EC2</asp:ListItem>
                        <asp:ListItem Value="d">d) Amazon RDS</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:View>
                <asp:View ID="VPregunta3" runat="server">
                    <h2>3. ¿Cuál de los siguientes servicios proporciona gestión y escalabilidad fáciles para bases de datos relacionales en la nube?</h2>
                    <asp:RadioButtonList ID="RBLPregunta3" runat="server">
                        <asp:ListItem Value="a">a) Amazon EC2</asp:ListItem>
                        <asp:ListItem Value="b">b) Amazon CloudFront</asp:ListItem>
                        <asp:ListItem Value="c">c) Amazon Lambda</asp:ListItem>
                        <asp:ListItem Value="d">d) Amazon RDS</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:View>
                <asp:View ID="VPregunta4" runat="server">
                    <h2>4. ¿Cuál de los siguientes servicios proporciona una entrega de datos rápida y segura a los usuarios finales?</h2>
                    <asp:RadioButtonList ID="RBLPregunta4" runat="server">
                        <asp:ListItem Value="a">a) Amazon EC2</asp:ListItem>
                        <asp:ListItem Value="b">b) Amazon Lambda</asp:ListItem>
                        <asp:ListItem Value="c">c) Amazon RDS</asp:ListItem>
                        <asp:ListItem Value="d">d) Amazon CloudFront</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:View>
                <asp:View ID="VPregunta5" runat="server">
                    <h2>5. ¿Cuál de los siguientes servicios permite a los desarrolladores ejecutar código sin aprovisionar ni administrar servidores?</h2>
                    <asp:RadioButtonList ID="RBLPregunta5" runat="server">
                        <asp:ListItem Value="a">a) Amazon CloudFront</asp:ListItem>
                        <asp:ListItem Value="b">b) Amazon RDS</asp:ListItem>
                        <asp:ListItem Value="c">c) Amazon Lambda</asp:ListItem>
                        <asp:ListItem Value="d">d) Amazon S3</asp:ListItem>
                    </asp:RadioButtonList>
                </asp:View>
                <asp:View ID="VResumen" runat="server">
                    <h2>Resultados del exámen</h2>
                    <p>Puntuación: <asp:Label ID="LblPuntuacion" runat="server" Text="5/5" /></p>
                    <p>Mensaje: <asp:Label ID="LblMensajeFInal" runat="server" Text="..." /></p>
                    <div>
                        <h3>1. ¿Cuál de los siguientes servicios proporciona escalabilidad, seguridad y rendimiento para almacenar y recuperar datos desde cualquier lugar de la web?</h3>
                        <p>Tu respuesta: <asp:Label runat="server" ID="LblRespuesta1" Text="a) Opción a" /></p>
                        <asp:Label runat="server" ID="LblRespuesta1Etiqueta" Text="Correcto" />
                    </div>

                    <div>
                        <h3>2. ¿Qué servicio de AWS permite a los usuarios ejecutar aplicaciones en máquinas virtuales escalables?</h3>
                        <p>Tu respuesta: <asp:Label runat="server" ID="LblRespuesta2" Text="a) Opción a" /></p>
                        <asp:Label runat="server" ID="LblRespuesta2Etiqueta" Text="Correcto" />
                    </div>

                    <div>
                        <h3>3. ¿Cuál de los siguientes servicios proporciona gestión y escalabilidad fáciles para bases de datos relacionales en la nube?</h3>
                        <p>Tu respuesta: <asp:Label runat="server" ID="LblRespuesta3" Text="a) Opción a" /></p>
                        <asp:Label runat="server" ID="LblRespuesta3Etiqueta" Text="Correcto" />
                    </div>

                    <div>
                        <h3>4. ¿Cuál de los siguientes servicios proporciona una entrega de datos rápida y segura a los usuarios finales?</h3>
                        <p>Tu respuesta: <asp:Label runat="server" ID="LblRespuesta4" Text="a) Opción a" /></p>
                        <asp:Label runat="server" ID="LblRespuesta4Etiqueta" Text="Correcto" />
                    </div>

                    <div>
                        <h3>5. ¿Cuál de los siguientes servicios permite a los desarrolladores ejecutar código sin aprovisionar ni administrar servidores?</h3>
                        <p>Tu respuesta: <asp:Label runat="server" ID="LblRespuesta5" Text="a) Opción a" /></p>
                        <asp:Label runat="server" ID="LblRespuesta5Etiqueta" Text="Correcto" />
                    </div>
                </asp:View>
            </asp:MultiView>
            <div>
                <asp:Button runat="server" Enabled="false" Text="Pregunta anterior" ID="BtnAnteriorPregunta" OnClick="BtnAnteriorPregunta_Click" />
                <asp:Button runat="server" Text="Siguiente pregunta" ID="BtnSiguientePregunta" OnClick="BtnSiguientePregunta_Click" />
                <asp:Button runat="server" Text="Finalizar cuestionario" ID="BtnFinalizar" OnClick="BtnFinalizar_Click" />
                <asp:Button runat="server" Visible="false" Text="Repetir cuestionario" ID="BntRepetir" OnClick="BntRepetir_Click" />
                <asp:Button runat="server" Text="Regresar al tema" ID="BtnRegresar" OnClick="BtnRegresar_Click" />
            </div>
        </form>
    </div>
</body>
</html>

<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="Fase_4_Apoyo_Didactico.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Inicio - Apoyo Didáctico</title>
    <link rel="stylesheet" href="/css/main.css" />
</head>
<body>
    <form runat="server">
        <header class="hero">
            <div>
                <div class="navbar">
                    <h1>APOYO<span>UNAD</span></h1>
                    <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar Sesión" />
                </div>
                <div class="content">
                    <img src="/img/undraw_studying_re_deca.svg" alt="Ilustración de l página principal" />
                    <div>
                        <h2>Apoyo didáctico a tu mano</h2>
                        <p>
                            Conoce de manera sencilla diferentes temas que son populares en la actualidad
                            a través de materiales de apoyo como videos, artículos, podcast y muchos más.
                        </p>
                    </div>
                </div>
            </div>
        </header>
        <main>
            <h2>Conoce los <span>temas populares</span></h2>
            <div class="temas">
                <div class="tema">
                    <img src="/img/metadatos.jpg" alt="Imagen representativa del tema Metadatos">
                    <div>
                        <h3>Metadatos</h3>
                        <p>
                            Los metadatos son datos que describen otros datos, en otras palabras, son datos que describen
                            características de otros datos como por ejemplo: el nombre de un archivo, la fecha de creación,
                            el autor, el tamaño, etc.
                        </p>
                        <asp:Button ID="btnMetadatos" runat="server" Text="Ver más" />
                    </div>
                </div>
                <div class="tema">
                    <img src="/img/tensorflow.jpg" alt="Imagen representativa del tema Tensor Flow">
                    <div>
                        <h3>Tensor Flow</h3>
                        <p>
                            TensorFlow es una biblioteca de código abierto para aprendizaje automático desarrollada por Google.
                            Es una biblioteca de código abierto para aprendizaje automático desarrollada por Google.
                        </p>
                        <asp:Button ID="btnTensorFlow" runat="server" Text="Ver más" />
                    </div>
                </div>
                <div class="tema">
                    <img src="/img/aws.jpeg" alt="Imagen representativa del tema Aws Amazon">
                    <div>
                        <h3>Aws Amazon</h3>
                        <p>
                            Amazon Web Services (AWS) es una plataforma de servicios en la nube que ofrece una amplia variedad
                            de servicios de computación en la nube, almacenamiento en la nube, bases de datos en la nube,
                            redes en la nube, análisis de datos en la nube, desarrollo de aplicaciones en la nube, pruebas de
                            aplicaciones en la nube, seguridad en la nube, administración de dispositivos móviles y mucho más.
                        </p>
                        <asp:Button ID="btnAwsAmazon" runat="server" Text="Ver más" OnClick="btnAwsAmazon_Click" />
                    </div>
                </div>
                <div class="tema">
                    <img src="/img/5g.jpg" alt="Imagen representativa del tema El 5G y la tecnología del futuro">
                    <div>
                        <h3>El 5G y la tecnología del futuro</h3>
                        <p>
                            El 5G es la quinta generación de redes móviles, que promete velocidades de descarga de hasta 10 Gbps
                            y latencias de 1 ms. El 5G es la quinta generación de redes móviles, que promete velocidades de
                            descarga de hasta 10 Gbps y latencias de 1 ms.
                        </p>
                        <asp:Button ID="btn5G" runat="server" Text="Ver más" />
                    </div>
                </div>
                <div class="tema">
                    <img src="/img/data_warehouse.jpg" alt="Imagen representativa del tema Data Warehouse">
                    <div>
                        <h3>Data Warehouse</h3>
                        <p>
                            Un data warehouse es un repositorio de datos que se utiliza para analizar y reportar información
                            de negocios. Un data warehouse es un repositorio de datos que se utiliza para analizar y reportar
                            información de negocios.
                        </p>
                        <asp:Button ID="btnDataWarehouse" runat="server" Text="Ver más" />
                    </div>
                </div>
            </div>
        </main>
    </form>
</body>
</html>

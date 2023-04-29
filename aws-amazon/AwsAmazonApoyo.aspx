<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AwsAmazonApoyo.aspx.vb" Inherits="Fase_4_Apoyo_Didactico.AwsAmazonApoyo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Apoyo didactico - AWS Amazon</title>
    <link rel="stylesheet" href="/css/main.css" />
</head>
<body>
    <form id="form1" runat="server">
        <main>
            <asp:LinkButton ID="BtnRegresar" runat="server" OnClick="BtnRegresar_Click" CssClass="bnt-regresar">Regresar al menú de cursos</asp:LinkButton>
            <div class="introduccion-tema">
                <h1>AWS Amazon</h1>
                <div class="text-services">
                    <p>
                        Amazon Web Services (AWS) es un conjunto de servicios de computación 
                        en la nube proporcionados por Amazon. Es uno de los proveedores de 
                        servicios en la nube más grandes y populares del mundo.  Los servicios 
                        de AWS permiten a las empresas alojar aplicaciones y servicios en línea, 
                        almacenar y recuperar datos, y escalar y administrar dinámicamente los 
                        recursos informáticos y de almacenamiento en función de las necesidades 
                        comerciales.
                    </p>
                    <img src="/img/service-1.svg" alt="Servicio 1" />
                </div>
                <div class="text-services">
                    <p>
                        AWS ofrece una amplia gama de servicios, desde el alojamiento de sitios 
                        web y aplicaciones móviles hasta la administración de grandes bases de 
                        datos y la creación de redes y sistemas de seguridad. Estos servicios 
                        están diseñados para ser altamente escalables, flexibles y confiables, 
                        lo que significa que las empresas pueden ampliar o reducir el uso de 
                        los servicios de AWS según sus necesidades.
                    </p>
                    <img src="/img/service-2.svg" alt="Servicio 2" />
                </div>
                <div class="text-services">
                    <p>
                        Uno de los puntos fuertes de AWS es su modelo de pago por uso, lo que 
                        significa que los usuarios pagan solo por los recursos que utilizan 
                        sin invertir en una infraestructura costosa y compleja. Además, 
                        AWS proporciona una amplia variedad de herramientas y recursos de 
                        administración y monitoreo para ayudar a las empresas a optimizar su 
                        uso de los servicios de AWS y garantizar la eficiencia y seguridad 
                        de sus aplicaciones y datos en línea.
                    </p>
                    <img src="/img/service-3.svg" alt="Servicio 3" />
                </div>
            </div>
            <div class="videos">
                <h2>¿Qué servicios ofrece?</h2>
                <asp:MultiView ID="MvVideos" runat="server" ActiveViewIndex="0">
                    <asp:View ID="View1" runat="server">
                        <div class="servicio">
                            <div>
                                <h3>Amazon S3 (Simple Storage Service)</h3>
                                <p>
                                    Es un servicio de almacenamiento en la nube que proporciona 
                                    escalabilidad, seguridad y rendimiento para almacenar y 
                                    recuperar cualquier cantidad de datos desde cualquier lugar 
                                    de la web. Es utilizado por empresas de todo el mundo para 
                                    almacenar y proteger sus datos críticos.
                                </p>
                            </div>
                            <iframe width="400" height="280" src="https://www.youtube.com/embed/qXLPhC-8AyI" title="Video educativo de introducción al servicio AWS S3 (Simple Storage Service)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="servicio">
                            <div>
                                <h3>Amazon EC2 (Elastic Compute Cloud)</h3>
                                <p>
                                    Es un servicio de infraestructura en la nube que permite a los usuarios 
                                    ejecutar aplicaciones en máquinas virtuales escalables. Es utilizado 
                                    por empresas para escalar sus recursos informáticos en la nube y para 
                                    ejecutar aplicaciones de manera eficiente sin tener que preocuparse 
                                    por la gestión del hardware subyacente.
                                </p>
                            </div>
                            <iframe width="400" height="280" src="https://www.youtube.com/embed/skSJGkxSY3Q" title="Video educativo de introducción al servicio AWS EC2 (Elastic Compute Cloud)" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <div class="servicio">
                            <div>
                                <h3>Amazon RDS (Relational Database Service)</h3>
                                <p>
                                    Es un servicio de bases de datos relacionales en la nube que proporciona 
                                    una gestión y escalabilidad fáciles para bases de datos MySQL, PostgreSQL, 
                                    Oracle, SQL Server y MariaDB. Es utilizado por empresas para gestionar 
                                    sus bases de datos y reducir la carga de trabajo del equipo de gestión 
                                    de bases de datos.
                                </p>
                            </div>
                            <iframe width="400" height="280" src="https://www.youtube.com/embed/gGAUDR0QeTk" title="¿Que es Amazon RDS? Caracteristicas de AWS RDS y ventajas de los Relational Database Service" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <div class="servicio">
                            <div>
                                <h3>Amazon CloudFront</h3>
                                <p>
                                    Es un servicio de red de entrega de contenido (CDN) que proporciona 
                                    una entrega de datos rápida y segura a los usuarios finales con 
                                    baja latencia y altas velocidades de transferencia. Es utilizado 
                                    por empresas para entregar contenido a los usuarios finales con 
                                    mayor rapidez y seguridad.
                                </p>
                            </div>
                            <iframe width="400" height="280" src="https://www.youtube.com/embed/K9d61sJTnGU" title="AWS Cloudfront | Como crear y configurar un cloudfront para un sitio web" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                    </asp:View>
                    <asp:View ID="View5" runat="server">
                        <div class="servicio">
                            <div>
                                <h3>Amazon Lambda</h3>
                                <p>
                                    Es un servicio de computación en la nube que permite a los 
                                    desarrolladores ejecutar código sin aprovisionar ni administrar 
                                    servidores. Es utilizado por empresas para ejecutar código de 
                                    manera eficiente sin tener que preocuparse por la gestión del 
                                    hardware subyacente.
                                </p>
                            </div>
                            <iframe width="400" height="280" src="https://www.youtube.com/embed/1OHLtQHGM_k" title="¿Qué es AWS Lambda?¿Cómo funciona AWS Lambda? Para principiantes y en español" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                        </div>
                    </asp:View>
                </asp:MultiView>
                <div class="botones">
                    <asp:Button ID="BtnAnterior" runat="server" Text="Anterior" OnClick="BtnAnterior_Click" />
                    <asp:Label ID="LblPageNum" runat="server" Text="1"></asp:Label>
                    <asp:Button ID="BtnSiguiente" runat="server" Text="Siguiente" OnClick="BtnSiguiente_Click" />
                </div>
            </div>
            <div class="pdf">
                <div>
                    <h2>Guía rápida para iniciar con AWS</h2>
                    <p>
                        AWS Service Catalog es un servicio que permite a las organizaciones 
                        crear y gestionar catálogos de servicios aprobados para su uso en AWS. 
                        Si estás buscando comenzar con AWS Service Catalog, la Guía del Usuario 
                        de AWS Service Catalog es una excelente manera de comenzar. 
                        La guía proporciona una descripción general del servicio y sus 
                        conceptos clave, como productos, plantillas y pilas. Además, 
                        la guía proporciona información detallada sobre cómo utilizar 
                        la vista de consola del usuario final para aprovisionar servicios 
                        y administrar los recursos informáticos asociados. También cubre 
                        temas como etiquetas, detalles de soporte y cómo personalizar los 
                        permisos de acceso a los servicios de AWS en Service Catalog. 
                        En general, la Guía del Usuario de AWS Service Catalog es una 
                        herramienta esencial para cualquiera que quiera aprender a gestionar 
                        y aprovisionar servicios en AWS.
                    </p>
                </div>
                <iframe src="~/../../pdf/service-catalog-ug.pdf" width="400" height="500" frameborder="0"></iframe>
            </div>
            <div class="potcast">
                <audio controls>
                    <source src="~/../../mp3/aws.mp3" type="audio/mpeg">
                </audio>
                <div>
                    <h2>Escucha a los expertos</h2>
                    <p>
                        En la serie de podcasts "Well-Architected Framework: la propuesta de AWS. 
                        Podcast Apasionados por la tecnología", el experto en AWS, Rubén Villar, 
                        profundiza en la importancia del marco de trabajo bien estructurado de 
                        AWS, el Well-Architected Framework (WAF), para ayudar a las empresas 
                        a diseñar e implementar soluciones en la nube de manera efectiva y 
                        segura. A través de esta serie de podcasts, Villar comparte sus 
                        conocimientos y experiencia en cómo el WAF puede ayudar a las 
                        organizaciones a mejorar la fiabilidad, la eficiencia y la seguridad 
                        de sus arquitecturas de nube. Desde la planificación y el diseño 
                        hasta la implementación y la optimización, Villar proporciona información 
                        valiosa para cualquier persona interesada en utilizar AWS de manera 
                        efectiva y eficiente.
                    </p>
                </div>
            </div>
            <div class="examen">
                <asp:Button ID="BtnExamen" runat="server" Text="Presentar examen" OnClick="BtnExamen_Click" />
            </div>
        </main>
    </form>
</body>
</html>

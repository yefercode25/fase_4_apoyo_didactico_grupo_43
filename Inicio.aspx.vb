Public Class Inicio
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Sesion.Nombres = "" Then
            Sesion.Mensaje = "No tienes permisos para acceder a esta página, inicia sesión primero."
            Sesion.HaveError = True
            Response.Redirect("/Auth/IniciarSesion.aspx")
        End If
    End Sub

    Protected Sub btnAwsAmazon_Click(sender As Object, e As EventArgs)
        Response.Redirect("~/aws-amazon/AwsAmazonApoyo.aspx")
    End Sub

    Protected Sub btnCerrarSesion_Click(sender As Object, e As EventArgs)
        Sesion.CerrarSesion()
        Response.Redirect("/Auth/IniciarSesion.aspx")
    End Sub
End Class
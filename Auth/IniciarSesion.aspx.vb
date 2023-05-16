Public Class IniciarSesion
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Sesion.HaveError And Sesion.Mensaje <> "" Then
            LblMensaje.Visible = True
            LblMensaje.Text = Sesion.Mensaje
            Sesion.Mensaje = ""
        End If

        If Sesion.HaveError And Sesion.Mensaje <> "" Then
            LblMensaje.Visible = True
            LblMensaje.Text = Sesion.Mensaje
            LblMensaje.CssClass = "text-danger"
            Sesion.Mensaje = ""
        End If
    End Sub

    Protected Sub btnIniciarSesion_Click(sender As Object, e As EventArgs)
        Dim codigoOCorreo As String = txtUsuario.Text
        Dim password As String = txtPassword.Text

        Dim isValidForm As Boolean = validarCampos()
        If isValidForm Then
            Try
                Dim usuarioTabla As DataTable = New Estudiantes().IniciarSesion(codigoOCorreo)
                If usuarioTabla.Rows.Count > 0 Then
                    Dim usuario As DataRow = usuarioTabla.Rows(0)
                    Dim passwordDB As String = CStr(usuario("Password"))
                    If passwordDB = password Then
                        Sesion.HaveError = False
                        Sesion.Codigo = CStr(usuario("Codigo"))
                        Sesion.Nombres = CStr(usuario("Nombres"))
                        Sesion.Apellidos = CStr(usuario("Apellidos"))
                        Sesion.Ciudad = CStr(usuario("Ciudad"))
                        Sesion.Programa = CStr(usuario("Programa"))
                        Sesion.Correo = CStr(usuario("Correo"))
                        Response.Redirect("/Inicio.aspx")
                    Else
                        LblMensaje.Visible = True
                        LblMensaje.Text = "La contraseña es incorrecta"
                    End If
                Else
                    LblMensaje.Visible = True
                    LblMensaje.Text = "El usuario no existe"
                End If
            Catch ex As Exception
                LblMensaje.Visible = True
                LblMensaje.Text = "Ha ocurrido un error al iniciar sesión"
            End Try
        End If
    End Sub

    Protected Function validarCampos() As Boolean
        Dim codigoOCorreo As String = txtUsuario.Text
        Dim password As String = txtPassword.Text
        LblMensaje.Visible = False
        LblMensaje.CssClass = "text-danger"

        Try
            If codigoOCorreo = "" Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Ingrese el código o correo del estudiante"
                Return False
            End If

            If password = "" Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Ingrese la contraseña del estudiante"
                Return False
            End If

            Return True
        Catch ex As Exception
            LblMensaje.Visible = True
            LblMensaje.Text = "Ha ocurrido un error al iniciar sesión"
            Return False
        End Try
    End Function
End Class
Public Class Registrar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnRegistrar_Click(sender As Object, e As EventArgs)
        Dim codigo As String = txtCodigo.Text
        Dim nombre As String = txtNombre.Text
        Dim apellido As String = txtApellido.Text
        Dim ciudad As String = txtCiudad.Text
        Dim programa As String = txtPrograma.Text
        Dim correo As String = txtCorreo.Text
        Dim password As String = txtPassword.Text
        Dim confirmarPassword As String = txtConfirmarPassword.Text

        Dim isValidForm As Boolean = validarCampos()

        If isValidForm Then
            Try
                Dim isInsertedInDB As Boolean = New Estudiantes().InsertarEstudiante(codigo, nombre, apellido, ciudad, programa, correo, password)
                If isInsertedInDB Then
                    Sesion.HaveError = False
                    Sesion.Mensaje = "El usuario con correo " + correo + " ha sido registrado exitosamente"
                    Response.Redirect("/Auth/IniciarSesion.aspx")
                Else
                    LblMensaje.Visible = True
                    LblMensaje.Text = "Ha ocurrido un error al registrar el estudiante"
                End If
            Catch ex As Exception
                LblMensaje.Visible = True
                LblMensaje.Text = "Ha ocurrido un error al registrar el estudiante, posiblemente ya está registrado"
            End Try
        End If
    End Sub

    Protected Function validarCampos() As Boolean
        Dim codigo As String = txtCodigo.Text
        Dim nombre As String = txtNombre.Text
        Dim apellido As String = txtApellido.Text
        Dim ciudad As String = txtCiudad.Text
        Dim programa As String = txtPrograma.Text
        Dim correo As String = txtCorreo.Text
        Dim password As String = txtPassword.Text
        Dim confirmarPassword As String = txtConfirmarPassword.Text
        LblMensaje.Visible = False

        Try
            If codigo = "" Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Ingrese el código del estudiante"
                Return False
            End If

            If Not IsNumeric(codigo) Then
                LblMensaje.Visible = True
                LblMensaje.Text = "El código debe ser un valor numérico"
                Return False
            End If

            If nombre = "" Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Ingrese el nombre del estudiante"
                Return False
            End If

            If apellido = "" Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Ingrese el apellido del estudiante"
                Return False
            End If

            If ciudad = "" Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Ingrese la ciudad del estudiante"
                Return False
            End If

            If programa = "" Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Ingrese el programa del estudiante"
                Return False
            End If

            If correo = "" Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Ingrese el correo del estudiante"
                Return False
            End If

            If password = "" Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Ingrese la contraseña del estudiante"
                Return False
            End If

            If confirmarPassword = "" Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Ingrese la confirmación de la contraseña del estudiante"
                Return False
            End If

            If password <> confirmarPassword Then
                LblMensaje.Visible = True
                LblMensaje.Text = "Las contraseñas no coinciden"
                Return False
            End If
        Catch ex As Exception
            LblMensaje.Visible = True
            LblMensaje.Text = "Ha ocurrido un error al validar el formulario"
            Return False
        End Try

        Return True
    End Function
End Class
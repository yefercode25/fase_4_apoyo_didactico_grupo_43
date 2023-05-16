Public NotInheritable Class Sesion
    Private Shared _codigo As Integer
    Private Shared _nombres As String
    Private Shared _apellidos As String
    Private Shared _ciudad As String
    Private Shared _programa As String
    Private Shared _correo As String
    Private Shared _password As String
    Private Shared _haveError As Boolean
    Private Shared _mensaje As String

    Private Sub New()
    End Sub

    Public Shared Property Codigo As Integer
        Get
            Return _codigo
        End Get
        Set(value As Integer)
            _codigo = value
        End Set
    End Property

    Public Shared Property Nombres As String
        Get
            Return _nombres
        End Get
        Set(value As String)
            _nombres = value
        End Set
    End Property

    Public Shared Property Apellidos As String
        Get
            Return _apellidos
        End Get
        Set(value As String)
            _apellidos = value
        End Set
    End Property

    Public Shared Property Ciudad As String
        Get
            Return _ciudad
        End Get
        Set(value As String)
            _ciudad = value
        End Set
    End Property

    Public Shared Property Programa As String
        Get
            Return _programa
        End Get
        Set(value As String)
            _programa = value
        End Set
    End Property

    Public Shared Property Correo As String
        Get
            Return _correo
        End Get
        Set(value As String)
            _correo = value
        End Set
    End Property

    Public Shared Property Password As String
        Get
            Return _password
        End Get
        Set(value As String)
            _password = value
        End Set
    End Property

    Public Shared Property HaveError As Boolean
        Get
            Return _haveError
        End Get
        Set(value As Boolean)
            _haveError = value
        End Set
    End Property

    Public Shared Property Mensaje As String
        Get
            Return _mensaje
        End Get
        Set(value As String)
            _mensaje = value
        End Set
    End Property

    Public Shared Sub CerrarSesion()
        _codigo = 0
        _nombres = ""
        _apellidos = ""
        _ciudad = ""
        _programa = ""
        _correo = ""
        _password = ""
        _haveError = False
        _mensaje = ""
    End Sub
End Class
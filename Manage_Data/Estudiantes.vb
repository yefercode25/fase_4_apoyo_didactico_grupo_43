Imports System.Configuration
Imports System.Data
Imports System.Data.SqlClient

Public Class Estudiantes
    Private ReadOnly connection As New SqlConnection(ConfigurationManager.ConnectionStrings("Conexion").ConnectionString)

    Public Function InsertarEstudiante(ByVal Codigo As Integer, ByVal Nombres As String, ByVal Apellidos As String, ByVal Ciudad As String, ByVal Programa As String, ByVal Correo As String, ByVal Password As String) As Boolean
        Dim command As New SqlCommand("SP_InsertarEstudiante", connection)
        command.CommandType = CommandType.StoredProcedure

        command.Parameters.AddWithValue("@Codigo", Codigo)
        command.Parameters.AddWithValue("@Nombres", Nombres)
        command.Parameters.AddWithValue("@Apellidos", Apellidos)
        command.Parameters.AddWithValue("@Ciudad", Ciudad)
        command.Parameters.AddWithValue("@Programa", Programa)
        command.Parameters.AddWithValue("@Correo", Correo)
        command.Parameters.AddWithValue("@Password", Password)

        connection.Open()
        Dim result As Integer = command.ExecuteNonQuery()
        connection.Close()

        Return result > 0
    End Function

    Public Function IniciarSesion(ByVal CorreoOCodigo As String) As DataTable
        Dim command As New SqlCommand("SP_IniciarSesion", connection)
        command.CommandType = CommandType.StoredProcedure

        command.Parameters.AddWithValue("@CorreoOCodigo", CorreoOCodigo)

        Dim adapter As New SqlDataAdapter(command)
        Dim dataTable As New DataTable()

        connection.Open()
        adapter.Fill(dataTable)
        connection.Close()

        Return dataTable
    End Function

End Class

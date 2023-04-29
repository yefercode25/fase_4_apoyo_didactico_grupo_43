Public Class AwsAmazonApoyo
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LblPageNum.Text = MvVideos.ActiveViewIndex + 1 & "/5"
    End Sub

    Protected Sub BtnAnterior_Click(sender As Object, e As EventArgs)
        If MvVideos.ActiveViewIndex = 0 Then
            MvVideos.ActiveViewIndex = 4
        Else
            MvVideos.ActiveViewIndex -= 1
        End If
        LblPageNum.Text = MvVideos.ActiveViewIndex + 1 & "/5"
    End Sub

    Protected Sub BtnSiguiente_Click(sender As Object, e As EventArgs)
        If MvVideos.ActiveViewIndex = 4 Then
            MvVideos.ActiveViewIndex = 0
        Else
            MvVideos.ActiveViewIndex += 1
        End If
        LblPageNum.Text = MvVideos.ActiveViewIndex + 1 & "/5"
    End Sub

    Protected Sub BtnRegresar_Click(sender As Object, e As EventArgs)

    End Sub

    Protected Sub BtnExamen_Click(sender As Object, e As EventArgs)

    End Sub
End Class
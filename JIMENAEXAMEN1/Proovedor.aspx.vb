﻿Public Class Proovedores
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    Protected Sub gvProveedores_SelectedIndexChanged(sender As Object, e As EventArgs)
        ' Lógica para cuando el usuario hace clic en "Select"
    End Sub

    Protected Sub gvProveedores_RowDeleting(sender As Object, e As GridViewDeleteEventArgs)
        ' Lógica para cuando el usuario hace clic en "Delete"
    End Sub

End Class


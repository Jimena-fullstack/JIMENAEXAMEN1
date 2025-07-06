Imports System.Data.SqlClient

Public Class Proovedores
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnGuardar_Click(sender As Object, e As EventArgs)

        Dim connStr As String = ConfigurationManager.ConnectionStrings("ProovedoresConnectionString2").ConnectionString
        Using conn As New SqlConnection(connStr)
            Dim query As String = "INSERT INTO Proovedores (NombreEmpresa, Contacto, Telefono) VALUES (@NombreEmpresa, @Contacto, @Telefono)"
            Using cmd As New SqlCommand(query, conn)
                cmd.Parameters.AddWithValue("@NombreEmpresa", txtNombreEmpresa.Text)
                cmd.Parameters.AddWithValue("@Contacto", txtContacto.Text)
                cmd.Parameters.AddWithValue("@Telefono", txtTelefono.Text)

                conn.Open()
                cmd.ExecuteNonQuery()
            End Using
        End Using


        LimpiarFormulario()
        Grid.DataBind()
    End Sub

    Protected Sub btnCancelar_Click(sender As Object, e As EventArgs)
        LimpiarFormulario()
    End Sub

    Private Sub LimpiarFormulario()
        txtNombreEmpresa.Text = ""
        txtContacto.Text = ""
        txtTelefono.Text = ""
        Grid.SelectedIndex = -1
    End Sub



End Class


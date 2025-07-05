Public Class Proovedor
    Public Sub New(proveedorId As Integer, nombreEmpresa As String, contacto As String, telefono As String)
        Me.ProveedorId = proveedorId
        Me.NombreEmpresa = nombreEmpresa
        Me.Contacto = contacto
        Me.Telefono = telefono


    End Sub

    Public Property ProveedorId As Integer
    Public Property NombreEmpresa As String
    Public Property Contacto As String
    Public Property Telefono As String

End Class




<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Proovedor.aspx.vb" Inherits="JIMENAEXAMEN1.Proovedores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    Información de proovedores

    <asp:GridView ID="Grid" runat="server" DataSourceID="SqlDataSource3"
        AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
        DataKeyNames="ProovedorID">
        
        <Columns>
             <%-- Botón de editar y eliminar --%>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            
            
            <asp:BoundField DataField="ProovedorID" HeaderText="ProovedorID" SortExpression="ProovedorID" ReadOnly="True" />
            <asp:BoundField DataField="NombreEmpresa" HeaderText="NombreEmpresa" SortExpression="NombreEmpresa" />
            <asp:BoundField DataField="Contacto" HeaderText="Contacto" SortExpression="Contacto" />
            <asp:BoundField DataField="Telefono" HeaderText="Telefono" SortExpression="Telefono" />
        </Columns>
    </asp:GridView>

  <!-- SqlDataSource con el GridView para seleccionar, actualizar y eliminar datos que tengo en la bd -->
    <asp:SqlDataSource ID="SqlDataSource3" runat="server"
        ConnectionString="<%$ ConnectionStrings:ProovedoresConnectionString2 %>"
        ProviderName="<%$ ConnectionStrings:ProovedoresConnectionString2.ProviderName %>"
        SelectCommand="SELECT * FROM [Proovedores]"
        UpdateCommand="UPDATE Proovedores SET NombreEmpresa=@NombreEmpresa, Contacto=@Contacto, Telefono=@Telefono WHERE ProovedorID=@ProovedorID"
        DeleteCommand="DELETE FROM Proovedores WHERE ProovedorID=@ProovedorID">
        
        <%-- Funcionalidad para actualizar/editar--%>
        <UpdateParameters>
            <asp:Parameter Name="NombreEmpresa" Type="String" />
            <asp:Parameter Name="Contacto" Type="String" />
            <asp:Parameter Name="Telefono" Type="String" />
            <asp:Parameter Name="ProovedorID" Type="String" />
        </UpdateParameters>
        
         <%-- Funcionalidad para borrar--%>
        <DeleteParameters>
            <asp:Parameter Name="ProovedorID" Type="String" />
        </DeleteParameters>
    </asp:SqlDataSource>


    </asp:Content>


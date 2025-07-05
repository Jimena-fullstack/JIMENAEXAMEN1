<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Proovedores.aspx.vb" Inherits="PRIMEREXAMEN.Proovedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
Cargar gridview

    <asp:GridView ID="Proove" runat="server" DataSourceID="SqlDataSourceexamen" Width="635px"></asp:GridView>

    <asp:SqlDataSource ID="SqlDataSourceexamen" runat="server" ConnectionString="<%$ ConnectionStrings:MiConexionSQL %>" SelectCommand="SELECT * FROM [Proovedores]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>

</asp:Content>

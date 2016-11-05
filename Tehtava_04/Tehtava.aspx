<%@ Page Language="C#" MasterPageFile="~/Tehtava.master" AutoEventWireup="true" CodeFile="Tehtava.aspx.cs" Inherits="Tehtava" %>

<asp:Content ContentPlaceHolderID="Content_01" runat="server">

    <h2>Tapa_01</h2>

    <asp:SqlDataSource ID="SqlDataSource" runat="server"
        ConnectionString="<%$ ConnectionStrings:DemoxOy %>"
        SelectCommand="SELECT [astunnus], [asnimi], [yhteyshlo], [postitmp] FROM [asiakas]" />
    
    <asp:GridView ID="GridView_1" runat="server" DataSourceID="SqlDataSource">
        <HeaderStyle Font-Bold="True" />
    </asp:GridView>

</asp:Content>

<asp:Content ContentPlaceHolderID="Content_02" runat="server">

    <h2>Tapa_02</h2>

    <asp:GridView ID="GridView_2" runat="server">
        <HeaderStyle Font-Bold="True" />
    </asp:GridView>

    <asp:Label ID="lblError" runat="server" Text="" />

</asp:Content>
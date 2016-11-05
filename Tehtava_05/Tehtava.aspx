<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tehtava.aspx.cs" Inherits="Tehtava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Tehtava_05</title>

        <link href="Styles/Styles.css" rel="stylesheet" type="text/css" />
    </head>
    
    <body>
        <form id="form" runat="server">
            <div>
                <h1>Tehtava_05</h1>

                <div>
                    <asp:Label Text="Name:" runat="server" CssClass="label" />
                    <asp:TextBox ID="txtName" runat="server" CssClass="textbox" />
                    
                    <br />
                    
                    <asp:Label Text="Code:" runat="server" CssClass="label" />
                    <asp:TextBox ID="txtCode" runat="server" CssClass="textbox" />
                    
                    <br />
                    
                    <asp:Label Text="Year:" runat="server" CssClass="label" />
                    <asp:TextBox ID="txtYear" runat="server" CssClass="textbox" />
                    
                    <br />
                    
                    <asp:Label Text="Country:" runat="server" CssClass="label" />
                    <asp:TextBox ID="txtCountry" runat="server" CssClass="textbox" />
                    
                    <br />
                    
                    <asp:Label Text="Purchase:" runat="server" CssClass="label" />
                    <asp:TextBox ID="txtPurchase" runat="server" CssClass="textbox" />
                    
                    <br />
                    
                    <asp:Label Text="PostCode:" runat="server" CssClass="label" />
                    <asp:TextBox ID="txtPostCode" runat="server" CssClass="textbox" />
                    
                    <br />
                    
                    <asp:Label Text="PostOffice:" runat="server" CssClass="label" />
                    <asp:TextBox ID="txtPostOffice" runat="server" CssClass="textbox" />
                    
                    <br />
                    
                    <asp:Label Text="Contact:" runat="server" CssClass="label" />
                    <asp:TextBox ID="txtContact" runat="server" CssClass="textbox" />
                </div>

                <div>
                    <asp:Button ID="bttSearchA" runat="server" Text="Search" OnClick="bttSearchA_Click" />
                    <asp:Button ID="bttSearchB" runat="server" Text="Search ordered" OnClick="bttSearchB_Click" />
                    
                    <asp:DropDownList ID="ddlCountry" runat="server" />
                    <asp:Button ID="bttSearchC" runat="server" Text="Search" OnClick="bttSearchC_Click" />
                    
                    <asp:Button ID="bttCreateA" runat="server" Text="Create" OnClick="bttCreateA_Click" />

                    <asp:GridView ID="gvCustomer" runat="server" />
                </div>

                <asp:Label ID="lblMessage" runat="server" />
            </div>
        </form>
    </body>
</html>
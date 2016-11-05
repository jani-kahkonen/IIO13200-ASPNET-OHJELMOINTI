<%@ Page Language="C#" Async="true" AutoEventWireup="true" CodeFile="Tehtava.aspx.cs" Inherits="Tehtava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Tehtava_09</title>

        <link href="Styles/Styles.css" rel="stylesheet" type="text/css" />
    </head>
    
    <body>
        <form id="form" runat="server">
            <div>
                <h1>Tehtava_09</h1>

                <asp:DropDownList ID="dropDownList" runat="server" CssClass="dropdownlist" OnSelectedIndexChanged="dropDownList_SelectedIndexChanged">
                    <Items>
                        <asp:ListItem Text="Select" Value="0" />
                        <asp:ListItem Text="Joensuu" Value="JNS" />
                        <asp:ListItem Text="Jyväskylä" Value="JY" />
                        <asp:ListItem Text="Lieksa" Value="LIS" />
                    </Items>
                </asp:DropDownList>

                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="button" OnClick="btnSearch_Click" />

                <br />

                <asp:DataGrid ID="dataGrid" runat="server" CssClass="datagrid" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundColumn HeaderText="TrainNumber" DataField="trainNumber" />
                        <asp:BoundColumn HeaderText="Cancelled" DataField="cancelled" />
                        <asp:BoundColumn HeaderText="DepartureDate" DataField="departureDate" />
                    </Columns>
                </asp:DataGrid>

                <br />

                <asp:Label ID="lblResult" runat="server" />
            </div>
        </form>
    </body>
</html>

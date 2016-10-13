<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tehtava.aspx.cs" Inherits="Tehtava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Tehtava_06</title>
    </head>
    
    <body>
        <form id="form" runat="server">
            <div>
                <asp:DataGrid ID="DataGrid" runat="server" AutoGenerateColumns="false">
                    <Columns>
                        <asp:BoundColumn DataField="Title" HeaderText="Title" />
                        <asp:BoundColumn DataField="Genre" HeaderText="Genre" />
                    </Columns>
                </asp:DataGrid>
            </div>
        </form>
    </body>
</html>
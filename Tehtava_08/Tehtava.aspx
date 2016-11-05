<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tehtava.aspx.cs" Inherits="Tehtava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Tehtava_08</title>
    </head>
    
    <body>
        <form id="form" runat="server">
            <div>
                <div style="width: 15%; height: 400px; float: left;">
                    <h1>Tehtava_08</h1>

                    <asp:XmlDataSource ID="TheatreSource" runat="server" DataFile="http://www.finnkino.fi/xml/TheatreAreas/" TransformFile="~/App_Data/Theatre.xsl" />
                    
                    <asp:ListBox ID="MyListBox" Runat="server" Height="100%" DataSourceID="TheatreSource" DataTextField="Name" DataValueField="ID" OnSelectedIndexChanged="MyListBox_SelectedIndexChanged" AutoPostBack="true" />
                </div>

                <div style="width: 85%; height: 400px; float: right;">
                    <h1><asp:Literal id="MyLiteral" runat="server" /></h1>

                    <asp:XmlDataSource ID="ScheduleSource" runat="server" TransformFile="~/App_Data/Schedule.xsl" />
                    <asp:Repeater ID="ScheduleRepeater" runat="server">
                        <ItemTemplate>
                            <img src="<%# Eval("Image") %>" />
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </form>
    </body>
</html>

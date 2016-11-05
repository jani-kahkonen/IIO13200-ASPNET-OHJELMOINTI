<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Sivu.aspx.cs" Inherits="Sivu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Tehtava_06 - Levykauppa</title>
    </head>
    <body>
        <form id="form" runat="server">
            <div>
                <h1>Levykauppa</h1>

                <asp:XmlDataSource id="XmlSourceRecord" runat="server" DataFile="~/App_Data/data.xml" />

                <asp:DataList id="MyDataList" runat="server" DataSourceId="XmlSourceRecord">
					<ItemTemplate>
                        <img src='<%# "App_Image/" + Eval("ISBN") + ".png" %>'> <br />
                        Title:	<%# Eval("Title") %> <br />
                        Artist:	<%# Eval("Artist") %> <br />
                        ISBN:	<%# Eval("ISBN") %> <br />
                        Price:	<%# Eval("Price") %> <br />
					</ItemTemplate>
				</asp:DataList>

                <asp:XmlDataSource id="XmlSourceSong" runat="server" DataFile="~/App_Data/data.xml" />
                
                <asp:Repeater runat="server" DataSourceId="XmlSourceSong">
                    <ItemTemplate>
                        Song:    <%# Eval("name") %> <br />
                    </ItemTemplate>
                </asp:Repeater>

                <p><a href="Tehtava.aspx">Takaisin</a></p>
            </div>
        </form>
    </body>
</html>
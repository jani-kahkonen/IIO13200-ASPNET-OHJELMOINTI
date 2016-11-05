<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tehtava.aspx.cs" Inherits="Tehtava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>Tehtava_06 - Levykauppa</title>
	</head>
	
	<body>
		<form id="form" runat="server">
			<div>
                <h1>Levykauppa</h1>

				<asp:XmlDataSource id="MySource" runat="server" DataFile="~/App_Data/data.xml" XPath="Records/genre/record" />
				
				<asp:DataList id="MyDataList" DataSourceId="MySource" runat="server">
					<ItemTemplate>
                        <div style="display: inline-block;">
                            <img src='<%# "App_Image/" + Eval("ISBN") + ".png" %>'>
                        </div>
                        <div style="display: inline-block; vertical-align: top">
                            Title:	<%# Eval("Title") %> <br />
							Artist:	<%# Eval("Artist") %> <br />
							ISBN:	<a href='<%# "/Sivu.aspx?record=" + Eval("ISBN") %>'><%# Eval("ISBN") %></a> <br />
							Price:	<%# Eval("Price") %> <br />
                        </div>
					</ItemTemplate>
				</asp:DataList>
			</div>
		</form>
	</body>
</html>
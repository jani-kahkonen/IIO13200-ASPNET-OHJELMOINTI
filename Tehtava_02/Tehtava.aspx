<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tehtava.aspx.cs" Inherits="Tehtava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>Tehtävä_02</title>

        <link href="Styles/Styles.css" rel="stylesheet" type="text/css" />
	</head>
	
	<body>
		<form runat="server">
			<div>
				<h1>Tehtävä_02</h1>
				
				<asp:Label ID="lblGame" runat="server" Text="Game:" CssClass="label"></asp:Label>
				
				<asp:DropDownList ID="ddlGame" runat="server" CssClass="dropdownlist">
					<asp:ListItem Text="Select game" />
					<asp:ListItem Text="Suomi lotto" />
					<asp:ListItem Text="Viking lotto" />
				</asp:DropDownList>

                <br />
				
				<asp:Label ID="lblCount" runat="server" Text="Count:" CssClass="label"></asp:Label>
				
				<asp:TextBox ID="txtCount" runat="server" CssClass="textbox"></asp:TextBox>
				
				<br />
				
				<asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" CssClass="button"></asp:Button>
				
				<br />
				
				<asp:Label ID="lblResult" runat="server"></asp:Label>
			</div>
		</form>
	</body>
</html>
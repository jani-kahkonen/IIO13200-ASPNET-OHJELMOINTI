<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tehtava.aspx.cs" Inherits="Tehtava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>Tehtävä_01</title>

        <link href="Styles/Styles.css" rel="stylesheet" type="text/css" />
	</head>
	
	<body>
		<form runat="server">
			<div>
				<h1>Tehtävä_01</h1>
				
				<asp:Label ID="lblLength" runat="server" Text="Length:" CssClass="label"></asp:Label>
				
				<asp:TextBox ID="txtLength" runat="server" CssClass="textbox"></asp:TextBox>
				
				<br />
				
				<asp:Label ID="lblHeight" runat="server" Text="Height:" CssClass="label"></asp:Label>
				
				<asp:TextBox ID="txtHeight" runat="server" CssClass="textbox"></asp:TextBox>
				
				<br />
				
				<asp:Label ID="lblWidth" runat="server" Text="Width:" CssClass="label"></asp:Label>
				
				<asp:TextBox ID="txtWidth" runat="server" CssClass="textbox"></asp:TextBox>
				
				<br />

                <asp:Label ID="lblCalculate" runat="server" Text="Calculate:" CssClass="label"></asp:Label>
				
				<asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" CssClass="button"></asp:Button>
				
				<br />
				
				<asp:Label ID="lblArea" runat="server" Text="Area:" CssClass="label"></asp:Label>
				
				<asp:TextBox ID="txtArea" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
				
				<br />
				
				<asp:Label ID="lblPerimeter" runat="server" Text="Perimeter:" CssClass="label"></asp:Label>
				
				<asp:TextBox ID="txtPerimeter" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>
				
				<br />
				
				<asp:Label ID="lblPrice" runat="server" Text="Price:" CssClass="label"></asp:Label>
				
				<asp:TextBox ID="txtPrice" runat="server" CssClass="textbox" ReadOnly="true"></asp:TextBox>

                <br />

                <asp:Label ID="lblError" runat="server"></asp:Label>
			</div>
		</form>
	</body>
</html>
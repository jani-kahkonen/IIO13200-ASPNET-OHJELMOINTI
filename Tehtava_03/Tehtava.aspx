<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tehtava.aspx.cs" Inherits="Tehtava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title>Tehtava_03</title>

        <link href="Styles/Styles.css" rel="stylesheet" type="text/css" />
	</head>
	
	<body>
		<form runat="server">
			<div>
				<h1>Tehtava_03</h1>

                <div>
                    <asp:Label runat="server" Text="Current day:" CssClass="label"></asp:Label>
                    
                    <asp:Label ID="lblCurrentDay" runat="server" Text="0" CssClass="label"></asp:Label>
                    
                    <br />
                    
                    <asp:Label runat="server" Text="Selected day:" CssClass="label"></asp:Label>
                    
                    <asp:Label ID="lblSelectedDay" runat="server" Text="0" CssClass="label"></asp:Label>
                    
                    <br />
                    
                    <asp:Label runat="server" Text="Difference:" CssClass="label"></asp:Label>
                    
                    <asp:Label ID="lblDifference" runat="server" Text="0" CssClass="label"></asp:Label>
                </div>

                <br />
				
                <div>
                    <asp:Button ID="btnPrevYear" runat="server" Text="<<" CssClass="button" OnClick="btnPrevYear_Click"></asp:Button>
                    
                    <asp:Button ID="btnNextYear" runat="server" Text=">>" CssClass="button" OnClick="btnNextYear_Click"></asp:Button>

                    <br />

                    <asp:Calendar ID="Calendar" runat="server" SelectionMode="Day" CssClass="calendar" onselectionchanged="Calendar_SelectionChanged"></asp:Calendar>
                </div>
				
				<br />
				
				<asp:Label ID="lblError" runat="server"></asp:Label>
			</div>
		</form>
	</body>
</html>
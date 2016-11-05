<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tehtava.aspx.cs" Inherits="Tehtava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>Tehtava_07</title>
        <link href="Styles/Styles.css" rel="stylesheet" type="text/css" />
    </head>
    
    <body>
        <form id="form" runat="server">
            <h1>Tehtava_07</h1>

            <div>
                <asp:Label runat="server" Text="PVM:" CssClass="label" />
                <asp:TextBox ID="txtDate" runat="server" />
                <br />
                <asp:Label runat="server" Text="Nimi:" CssClass="label" />
                <asp:TextBox ID="txtName" runat="server" />
                <br />
                <asp:Label runat="server" Text="Koodi:" CssClass="label" />
                <asp:TextBox ID="txtCourse" runat="server" />
                <br />
                <asp:Label runat="server" Text="Olen oppinut:" CssClass="label" />
                <asp:TextBox ID="txtEvaluationA" runat="server" TextMode="multiline" />
                <br />
                <asp:Label runat="server" Text="Haluan oppia:" CssClass="label" />
                <asp:TextBox ID="txtEvaluationB" runat="server" TextMode="multiline" />
            </div>

            <div>
                <asp:Label runat="server" Text="Hyvää:" CssClass="label" />
                <asp:TextBox ID="txtFeedbackA" runat="server" TextMode="multiline" />
                <br />
                <asp:Label runat="server" Text="Parannettavaa:" CssClass="label" />
                <asp:TextBox ID="txtFeedbackB" runat="server" TextMode="multiline" />
                <br />
                <asp:Label runat="server" Text="Muuta:" CssClass="label" />
                <asp:TextBox ID="txtFeedbackC" runat="server" TextMode="multiline" />
                <br />
                <asp:CustomValidator ID="myCustomValidator" runat="server" ErrorMessage="CustomValidator" OnServerValidate="myCustomValidator_ServerValidate" />
                <br />
                <asp:Button ID="btnSendXML" runat="server" Text="Tallenna XML" CssClass="button" OnClick="btnSendXML_Click" />
                <asp:Button ID="btnSendSQL" runat="server" Text="Tallenna SQL" CssClass="button" OnClick="btnSendSQL_Click" />
            </div>

            <div>
                <h1>Palautteet</h1>
                <asp:Button ID="btnLoadXML" runat="server" Text="Hae XML" CssClass="button" OnClick="btnLoadXML_Click" />
                <asp:Button ID="btnLoadSQL" runat="server" Text="Hae SQL" CssClass="button" OnClick="btnLoadSQL_Click" />

                <asp:GridView ID="gvFeedback" runat="server" />
            </div>

            <asp:Label ID="lblMessage" runat="server" />
        </form>
    </body>
</html>
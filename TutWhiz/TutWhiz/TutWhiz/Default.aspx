<%@ Page Title="" Language="C#" MasterPageFile="~/TutWhiz/TutWhiz.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TutWhiz.TutWhiz.Default" %>

<asp:Content runat="server" ContentPlaceHolderID="Content2">
    <asp:Panel ID="pnlLogIn" runat="server" DefaultButton="btnLogIn">
    <div class="container-fluid">
        <asp:Label Text="Username: " runat="server"></asp:Label>
        <input type="text" id="txtUserName" pattern="[a-zA-z0-9-_.]+" runat="server" title="UserName" oninvalid="setCustomValidity('Only letters, numbers, and the following special characters are allowed - _ .')" onchange="try{setCustomValidity('')}catch(e){}" />
        <br />
        <asp:Label Text="Password: " runat="server"></asp:Label>
        <br />
        <p>HI FAMILY!</p>
        <br />
        <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnLogIn" runat="server" Text="Log In" OnClick="btnLogIn_Click" CssClass="btn btn-default" />
    </div>
    </asp:Panel>
    <script type="text/javascript">
        function button_click(objTextBox, objBtnID) {
            if (window.event.keyCode == 13) {
                document.getElementById(objBtnID).focus();
                document.getElementById(objBtnID).click();
            }
        }
    </script>
</asp:Content>

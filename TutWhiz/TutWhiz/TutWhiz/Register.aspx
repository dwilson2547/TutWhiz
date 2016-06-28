<%@ Page Title="" Language="C#" MasterPageFile="~/TutWhiz/TutWhiz.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="TutWhiz.TutWhiz.Register" %>

<asp:Content ID="Content3" ContentPlaceHolderID="Content2" Runat="Server">
    <style type="text/css">
        .textbox {
            width: 70%;
        }
    </style>
    <asp:Panel runat="server" DefaultButton="btnSubmit">
        <div class="form-group col-lg-6">
            <h2>Register</h2>
            <br />
            <asp:Label runat="server" Text="UserName: "></asp:Label>
            <input type="text" id="txtUserName" pattern="[a-zA-z0-9-_.]+" class="form-control textbox" runat="server" title="UserName" oninvalid="setCustomValidity('Only letters, numbers, and the following special characters are allowed - _ .')" onchange="try{setCustomValidity('')}catch(e){}" />
            <asp:Label runat="server" Text="First Name: "></asp:Label>
            <input type="text" id="txtFirstName" pattern="[a-zA-Z0-9']+" class="form-control textbox" runat="server" title="FirstName" oninvalid="setCustomValidity('Only letters, numbers, and the following special characters are allowed')" onchange="try{setCustomValidity('')}catch(e){}" />
            <asp:Label runat="server" Text="Last Name: "></asp:Label>
            <asp:TextBox ID="txtLastName" runat="server" pattern="[a-zA-Z0-9']+"  CssClass="form-control textbox"/>
            <asp:Label runat="server" Text="Email Address: "></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control textbox" TextMode="Email" ></asp:TextBox>
            <asp:Label runat="server" Text="Password: "></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control textbox" ></asp:TextBox>
            <asp:RegularExpressionValidator ID="regex_txtPassword" runat="server" ControlToValidate="txtPassword" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" ForeColor="Red"></asp:RegularExpressionValidator>
            <asp:Label runat="server" Text="Repeat Password: "></asp:Label>
            <asp:TextBox ID="txtRepeatPassword" runat="server" TextMode="Password" CssClass="form-control textbox" ></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="submit" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CssClass="btn btn-default" OnClick="btnCancel_Click" />
        </div>
    </asp:Panel>
    <script type="text/javascript">

    </script>
</asp:Content>

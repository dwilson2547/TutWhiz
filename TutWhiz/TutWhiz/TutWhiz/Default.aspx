<%@ Page Title="" Language="C#" MasterPageFile="~/TutWhiz/TutWhiz.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TutWhiz.TutWhiz.Default" %>

<asp:Content runat="server" ContentPlaceHolderID="Content2">
    <asp:Panel ID="pnlMain" runat="server">
    <div class="container-fluid">
        <h2>Welcome to TutWhiz!</h2>
    </div>
        <div class="container-fluid">
            <p>Name: </p>
            <asp:TextBox ID="txtBox" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" Text="Submit" CssClass="btn btn-primary" runat="server" OnClick="btnSubmit_Click" />
        </div>
    </asp:Panel>
    <script type="text/javascript">
        
    </script>
</asp:Content>

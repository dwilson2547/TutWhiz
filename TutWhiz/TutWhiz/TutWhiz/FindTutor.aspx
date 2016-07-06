<%@ Page Title="" Language="C#" MasterPageFile="~/TutWhiz/TutWhiz.Master" AutoEventWireup="true" CodeBehind="FindTutor.aspx.cs" Inherits="TutWhiz.TutWhiz.FindTutor" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Content2" runat="server">
    <asp:Panel ID="pnlMain" runat="server" CssClass="container-fluid">
        <div class="form-horizontal">
        <div class="form-group">
            <label for="ddlSchool" class="col-sm-2 control-label">School</label>
            <div class="col-sm-6">
                <asp:DropDownList ID="ddlSchool" runat="server" CssClass="form-control">
                    <asp:ListItem>Purdue</asp:ListItem>
                    <asp:ListItem>IU</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
            </div>
    </asp:Panel>
</asp:Content>
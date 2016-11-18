<%@ Page Title="" Language="C#" MasterPageFile="~/TutWhiz/TutWhiz.Master" AutoEventWireup="true" CodeBehind="FindTutor.aspx.cs" Inherits="TutWhiz.TutWhiz.FindTutor" %>

<asp:Content ID="Content2" ContentPlaceHolderID="Content2" runat="server">
    <style type="text/css">
        .btn-primary {
            background-color: #222;
            border-color: #111;
        }
        .btn-primary:hover {
            background-color: #444;
            border-color: #000; 
        }
        .btn-primary:active,
        .btn-primary.active,
        .open > .dropdown-toggle.btn-primary {
            color: #fff;
            background-color: #666;
            border-color: #222;
        }
    </style>
    <link href="../Style_Libraries/select2-bootstrap.css" rel="stylesheet" />
    <asp:Panel ID="pnlMain" runat="server" CssClass="container-fluid">
        <div class="form-group">
            <div class="form-group col-sm-12">
                <label for="ddlSchool" class="col-sm-2">School</label>
                <div class="col-sm-6">
                    <asp:DropDownList ID="ddlSchool" runat="server" CssClass="form-control">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>Purdue</asp:ListItem>
                        <asp:ListItem>IU</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label CssClass="small" runat="server">Don't see your school? Add it <a href="#">Here</a></asp:Label>
                </div>
                <div class="col-sm-4">
                    
                </div>
            </div>
            <div class="form-group col-sm-12">
                <label for="ddlDept" class="col-sm-2">Department</label>
                <div class="col-sm-6">
                    <asp:DropDownList ID="ddlDept" runat="server" CssClass="form-control">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>CNIT</asp:ListItem>
                        <asp:ListItem>CS</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label CssClass="small" runat="server">Don't see your department? Add it <a href="#">Here</a></asp:Label>
                </div>
                <div class="col-sm-4">

                </div>
            </div>
            <div class="form-group col-sm-12">
                <label for="ddlClass" class="col-sm-2">Class</label>
                <div class="col-sm-6">
                    <asp:DropDownList ID="ddlClass" runat="server" CssClass="form-control">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>155</asp:ListItem>
                        <asp:ListItem>180</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label CssClass="small" runat="server">Don't see your class? Add it <a href="#">Here</a></asp:Label>
                </div>
                <div class="col-sm-4">
                    
                </div>
            </div>
            <div class="well col-sm-12">
                <asp:Button runat="server" ID="btnSearch" Text="Search" CssClass="btn btn-primary" />
            </div>
        </div>
    </asp:Panel>
</asp:Content>
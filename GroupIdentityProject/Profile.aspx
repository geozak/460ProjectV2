<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="GroupIdentityProject.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Profile</h2>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Review your profile</h4>
                <hr />
                <dl class="d1-horizontal">
                    <asp:Label ID="UserNameLable" runat="server" text="test"></asp:Label>
                    <dt>
                        <a class="btn btn-default" href="Account/Confirm.aspx">Account Confirmation</a>
                        <a class="btn btn-default" href="Account/Forgot.aspx">Forgot Password</a>
                        <a class="btn btn-default" href="Account/Manage.aspx">Manage Account</a>
                        <a class="btn btn-default" href="Account/ManagePassword.aspx">Manage Password</a>
                    </dt>
                </dl>
            </div>
        </div>

    
    
    <asp:SqlDataSource ID="ProfileDataSource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" 
        OnInit="ProfileDataSource_Init" 
        SelectCommand="SELECT [UserName], [Id] FROM [AspNetUsers] WHERE ([UserName] = @Id)">
        <SelectParameters>
            <asp:Parameter Name="Id" Type="String" DefaultValue="<% System.Web.HttpContext.Current.User.Identity.Name %>" />
        </SelectParameters>
    </asp:SqlDataSource>
        </div>
</asp:Content>

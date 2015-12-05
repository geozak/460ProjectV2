<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="GroupIdentityProject.Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Profile</h2>

    <div class="row">
        <div class="col-md-12">
            <div class="form-horizontal">
                <h4>Review your profile</h4>
                <hr />
                <dl class="d1-horizontal">
                    <dt>User Name:</dt>
                    <dt>Email:</dt>
                    <dt>Password Confirmation</dt>
                    <dd>
                        <asp:Label ID="UserNameLabel" runat="server" Text="test"></asp:Label>
                        <asp:Label ID="EmailLabel" runat="server" Text="test"><%: Context.User.Identity.GetUserName()  %></asp:Label>
                        <asp:Label ID="pwConfirmLabel" runat="server" Text="test"></asp:Label>
                    </dd>
                    
                    
                </dl>
            </div>
            <a class="btn btn-default" href="Account/Manage.aspx">Manage Account</a>
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

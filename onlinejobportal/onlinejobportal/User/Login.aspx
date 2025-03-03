<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMaster.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="onlinejobportal.User.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
    <div class="container pt-5 pb-5">
        <div class="row justify-content-center">
            <div class="col-12 pb-3">
                <asp:Label ID="lblMsg" runat="server" Visible="false"></asp:Label>
            </div>
            <div class="col-12 text-center">
                <h2 class="contact-title">Sign In</h2>
            </div>
            <div class="col-lg-6 col-md-8 col-sm-10 mx-auto">
                <div class="form-contact contact_form" id="contactForm" novalidate="novalidate">
                    <div class="row">
                        <div class="col-12">
                            <div class="form-group">
                                <label for="txtUserName">Username</label>
                                <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control" placeholder="Enter Unique Username" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <label for="txtPassword">Password</label>
                                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password" />
                            </div>
                        </div>
                        <div class="col-12">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Login Type"></asp:Label>
                               <br /><br />
                                <asp:DropDownList ID="ddlLoginType" runat="server" CssClass="form-control w-100">
                                    <asp:ListItem Value="0">Select Login Type</asp:ListItem>
                                    <asp:ListItem>Admin</asp:ListItem>
                                    <asp:ListItem>User</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RegularExpressionValidator 
                                    ID="RegularExpressionValidator3" 
                                    runat="server" 
                                    ErrorMessage="Login Type is required" 
                                    ForeColor="Red" 
                                    Display="Dynamic" 
                                    SetFocusOnError="true" 
                                    Font-Size="Small" 
                                    InitialValue="0" 
                                    ControlToValidate="ddlLoginType" 
                                    ValidationExpression="^(?!0$).+" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group mt-3">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="button button-contactForm boxed-btn mr-4" OnClick="btnLogin_Click" />
                        <a href="../User/Register.aspx" style="color:darkblue">New User? Click Here..</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</asp:Content>

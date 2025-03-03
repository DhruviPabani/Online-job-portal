<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="onlinejobportal.Admin.UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div style="background-image: url('../Images/bg.jpg'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed; font-size: medium; font-family: 'Times New Roman', Times, serif;">

        <div class="container-fluid pt-4 pb-4" style="background-color: rgba(255, 255, 255, 0.8); border-radius: 8px; padding: 20px; margin-top: 50px;">

            <div>
                <asp:Label ID="lblMsg" runat="server" Style="color: #7200cf; font-size: 18px; font-weight: bold; text-align: center; display: block; margin-bottom: 20px;"></asp:Label>
            </div>
            <h3 class="text-center" style="color: #7200cf; font-size: 32px; font-weight: bold; text-align: center;">User List/Details</h3>

            <div class="row mb-3 pt-sm-3">
                <div class="col-md-12 text-center">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserId" DataSourceID="SqlDataSource1" HorizontalAlign="Center" Width="839px"
                        Style="border-collapse: collapse; width: 100%; font-size: 16px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); margin-top: 20px;">
                        <Columns>
                            <asp:BoundField DataField="UserId" HeaderText="UserId" ReadOnly="True" SortExpression="UserId" />
                            <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username" />

                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />

                        </Columns>
                        <HeaderStyle BackColor="#7200cf" ForeColor="White" Font-Bold="True" HorizontalAlign="Center" />
                    </asp:GridView>

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString2 %>" DeleteCommand="DELETE FROM [User] WHERE [UserId] = @UserId" InsertCommand="INSERT INTO [User] ([Username], [Password], [Name], [Email], [Mobile], [TenthGrade], [TwelfthGrade], [GraduationGrade], [PostgraduationGrade], [Phd], [WorksOn], [Experience], [Resume], [Address]) VALUES (@Username, @Password, @Name, @Email, @Mobile, @TenthGrade, @TwelfthGrade, @GraduationGrade, @PostgraduationGrade, @Phd, @WorksOn, @Experience, @Resume, @Address)" ProviderName="<%$ ConnectionStrings:JobPortalConnectionString2.ProviderName %>" SelectCommand="SELECT [UserId], [Username], [Password], [Name], [Email], [Mobile], [TenthGrade], [TwelfthGrade], [GraduationGrade], [PostgraduationGrade], [Phd], [WorksOn], [Experience], [Resume], [Address] FROM [User]" UpdateCommand="UPDATE [User] SET [Username] = @Username, [Password] = @Password, [Name] = @Name, [Email] = @Email, [Mobile] = @Mobile, [TenthGrade] = @TenthGrade, [TwelfthGrade] = @TwelfthGrade, [GraduationGrade] = @GraduationGrade, [PostgraduationGrade] = @PostgraduationGrade, [Phd] = @Phd, [WorksOn] = @WorksOn, [Experience] = @Experience, [Resume] = @Resume, [Address] = @Address WHERE [UserId] = @UserId">
                        <DeleteParameters>
                            <asp:Parameter Name="UserId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="Username" Type="String" />

                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />


                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Username" Type="String" />

                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Email" Type="String" />
                            <asp:Parameter Name="Mobile" Type="String" />



                            <asp:Parameter Name="UserId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>



</asp:Content>

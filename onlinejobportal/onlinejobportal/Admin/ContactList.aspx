<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="ContactList.aspx.cs" Inherits="onlinejobportal.Admin.ContactList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div style="background-image: url('../Images/bg.jpg'); width: 100%; height: 720px; background-repeat: no-repeat; background-size: cover; background-attachment: fixed; font-size: medium; font-family: 'Times New Roman', Times, serif;">

        <div class="container-fluid pt-4 pb-4" style="background-color: rgba(255, 255, 255, 0.8); border-radius: 8px; padding: 20px; margin-top: 50px;">
            
            <div>
                <asp:Label ID="lblMsg" runat="server" style="color: #7200cf; font-size: 18px; font-weight: bold; text-align: center; display: block; margin-bottom: 20px;"></asp:Label>
            </div>
            <h3 class="text-center" style="color: #7200cf; font-size: 32px; font-weight: bold; text-align: center;">Contact List/Details</h3>

            <div class="row mb-3 pt-sm-3">
                <div class="col-md-12">
                    <!-- GridView for Contact List -->
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="10" CellSpacing="10" DataKeyNames="id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." HorizontalAlign="Center" Width="839px" 
                        style="border-collapse: collapse; width: 100%; font-size: 16px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); margin-top: 20px;">
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="ID" ReadOnly="True" SortExpression="id" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" ItemStyle-HorizontalAlign="Center" />
                            <asp:BoundField DataField="message" HeaderText="Message" SortExpression="message" ItemStyle-HorizontalAlign="Center" />
                        </Columns>

                        <HeaderStyle BackColor="#7200cf" ForeColor="White" Font-Bold="True"  HorizontalAlign="Center" />
                       
                    </asp:GridView>

                    <!-- SqlDataSource -->
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:JobPortalConnectionString1 %>" 
                        DeleteCommand="DELETE FROM [Contact] WHERE [id] = @id" 
                        InsertCommand="INSERT INTO [Contact] ([name], [email], [subject], [message]) VALUES (@name, @email, @subject, @message)" 
                        ProviderName="<%$ ConnectionStrings:JobPortalConnectionString1.ProviderName %>" 
                        SelectCommand="SELECT [id], [name], [email], [subject], [message] FROM [Contact]" 
                        UpdateCommand="UPDATE [Contact] SET [name] = @name, [email] = @email, [subject] = @subject, [message] = @message WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="name" Type="String" />
                            <asp:Parameter Name="email" Type="String" />
                            <asp:Parameter Name="subject" Type="String" />
                            <asp:Parameter Name="message" Type="String" />
                            <asp:Parameter Name="id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>

        </div>

    </div>
    
   
    
</asp:Content>

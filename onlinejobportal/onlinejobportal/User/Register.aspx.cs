using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace onlinejobportal.User
{
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Insert into [User] ([Username],[Password],[Name],[Email],[Mobile],[Address]) values (@username,@password,@name,@email,@mobile,@address)", con);
                cmd.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
                cmd.Parameters.AddWithValue("@password", txtConfirmPassword.Text.Trim());
                cmd.Parameters.AddWithValue("@name", txtFullName.Text.Trim());
                cmd.Parameters.AddWithValue("@email", txtEmail.Text.Trim());
                cmd.Parameters.AddWithValue("@mobile", txtMobile.Text.Trim());
                cmd.Parameters.AddWithValue("@address", txtAddress.Text.Trim());

                con.Open();
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    lblMsg.Visible = true;
                    lblMsg.Visible = true;
                    lblMsg.Text = "Registration Successfull!!";
                    lblMsg.CssClass = "alert alert-success";
                    clear();
                }
                else
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Cannot save record right now,plzzz try after sometime..!";
                    lblMsg.CssClass = "alert alert-danger";
                }
            }
            catch (Exception ex)
            {
                if (ex.Message.Contains("Violation of Unique key contraint"))
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "<b>" + txtUserName.Text.Trim() + "</b> username already exist, try new one..!";
                    lblMsg.CssClass = "alert alert-danger";

                }
                else
                {
                    Response.Write("<script> alert ('" + ex.Message + "');</script>");

                }
            }
            finally
            {
                con.Close();
            }
        }
        private void clear()
        {
            txtUserName.Text = String.Empty;
            txtConfirmPassword.Text = String.Empty;
            txtFullName.Text = String.Empty;
            txtEmail.Text = String.Empty;
            txtMobile.Text = String.Empty;
            txtAddress.Text = String.Empty;

        }
    }
}
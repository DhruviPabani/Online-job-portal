using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlinejobportal.User
{

    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString1"].ConnectionString);
        string username, password = string.Empty;
        SqlDataReader reader;

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (ddlLoginType.SelectedValue == "Admin")
                {
                    username = ConfigurationManager.AppSettings["Username"];
                    password = ConfigurationManager.AppSettings["Password"];

                    if (username == txtUserName.Text.Trim() && password == txtPassword.Text.Trim())
                    {
                        Session["admin"] = username;
                        Response.Redirect("../Admin/Dashboard.aspx", false);
                    }
                    else
                    {
                        showErrorMsg("Admin");
                    }
                }
                else
                {

                    SqlCommand cmd = new SqlCommand("select * from [User] where Username=@username and Password=@password", con);

                    cmd.Parameters.AddWithValue("@username", txtUserName.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", txtPassword.Text.Trim());

                    con.Open();
                    reader = cmd.ExecuteReader();
                    if (reader.Read())
                    {
                        Session["User"] = reader["Username"].ToString();
                        Session["UserId"] = reader["UserId"].ToString();
                        Response.Redirect("../User/Default.aspx", false);
                    }
                    else
                    {
                        showErrorMsg("User");

                    }
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script> alert ('" + ex.Message + "');</script>");
                con.Close();
            }
        }
        private void showErrorMsg(string v)
        {
            lblMsg.Visible = true;
            lblMsg.Text = "<b>" + v + "</b> creadentials are incorrect..!";
            lblMsg.CssClass = "alert alert-danger";
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
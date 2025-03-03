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
    public partial class Contact : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["JobPortalConnectionString1"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Insert into [Contact] ([name],[email],[subject],[message] ) values (@name, @email, @subject, @message)", con);
                cmd.Parameters.AddWithValue("@name", name.Value.Trim());
                cmd.Parameters.AddWithValue("@email", email.Value.Trim());
                cmd.Parameters.AddWithValue("@subject", subject.Value.Trim());
                cmd.Parameters.AddWithValue("@message", message.Value.Trim());
                con.Open();
                int r = cmd.ExecuteNonQuery();
                if (r > 0)
                {
                    lblMsg.Visible = true;
                    lblMsg.Text = "Thanks for reaching out will look into your query!";
                    lblMsg.CssClass = "alert alert-success";
                    Clear();
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
                Response.Write("<script> alert ('" + ex.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }
        private void Clear()
        {
            name.Value = String.Empty;
            email.Value = String.Empty;
            subject.Value = String.Empty;
            message.Value = String.Empty;
        }
    }
}
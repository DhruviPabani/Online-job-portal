using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace onlinejobportal.User
{
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con;
        string str = ConfigurationManager.ConnectionStrings["JobPortalConnectionString1"].ConnectionString;
        SqlCommand cmd;
        SqlDataAdapter sda;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
                ShowUserProfile();
            }
        }

        private void ShowUserProfile()
        {
            con = new SqlConnection(str);
            string query = "Select UserId,Username,Name,Address,Mobile,Email,Resume FROM [User] where Username = @username";
            cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", Session["User"]);
            sda = new SqlDataAdapter(cmd);
            dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                dlProfile.DataSource = dt;
                dlProfile.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Please do login again with your latest username');</script>");
            }
            
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            Button btn = (Button)sender;
            string username = btn.CommandArgument.ToString();
            Response.Redirect("ResumeBuild.aspx?id=" + username); // Redirect to ResumeBuild page with user ID

        }


        protected void dlProfile_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "EditUserProfile")
            {
                Response.Redirect("ResumeBuild.aspx?id="+e.CommandArgument.ToString());
            }
        }
    }
}
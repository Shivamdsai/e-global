using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace eGlobalFirstIteration.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        private string sqlStr = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString;

        private SqlConnection conn;
        private SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["username"] != null)
            {
                Response.Redirect("Dashboard.aspx");
            }            
        }

        protected void login_Click(object sender, EventArgs e)
        {            
            try
            {
                conn = new SqlConnection(sqlStr);
                cmd = new SqlCommand("SELECT * FROM AdminLogin WHERE username = @username and password = @password", conn);

                cmd.Parameters.AddWithValue("@username", username.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();

                da.Fill(dt);

                conn.Open();

                int i = cmd.ExecuteNonQuery();

                conn.Close();

                if(dt.Rows.Count > 0)
                {
                    Session["username"] = username.Text;
                    Response.Redirect("Dashboard.aspx");
                    Session.RemoveAll();
                }
                else
                {
                    errorLabel.Text = "Username and Password is incorrect!";
                }
            }
            catch
            {
                errorLabel.Text = "Something wrong. Please try again.";
            }
        }       
    }
}
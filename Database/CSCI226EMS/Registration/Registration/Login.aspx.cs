using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace Registration
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
            conn.Open();
            string users = "select count(*) from registration where username='" + txtlogun.Text + "'";
            SqlCommand com = new SqlCommand(users, conn);
            int tem = Convert.ToInt32(com.ExecuteScalar().ToString());


            if (tem == 1)
            {
                
                string passwordquery = "select password from registration where username='" + txtlogun.Text + "'";
                SqlCommand passcom = new SqlCommand(passwordquery, conn);
                string password = passcom.ExecuteScalar().ToString().Replace(" ","");
                if (password == txtlogpass.Text)
                {
                    Session["New"] = txtlogun.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("Users.aspx");

                }
                else
                {
                    Response.Write("Password is Not correct");
                }
            }
            else
            {
                Response.Write("Username is Incorrect");

            }



        }
    }
}
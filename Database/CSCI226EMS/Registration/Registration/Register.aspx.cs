using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Registration
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string users = "select count(*) from registration where username='" + txtun.Text + "'";
                SqlCommand com = new SqlCommand(users,conn);
                int tem = Convert.ToInt32(com.ExecuteScalar().ToString());
                if (tem == 1)
                {
                    Response.Write("User Already Exists");
                }
                
                
                conn.Close();

            }

        }

        protected void registration_Click(object sender, EventArgs e)
        {
            try
            {
                
                Guid newGUID = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["RegistrationConnectionString"].ConnectionString);
                conn.Open();
                string insert = "insert into registration(fname,lname,address,country,username,password,email) values(@fname,@lname,@address,@country,@username,@password,@email)";
                SqlCommand com = new SqlCommand(insert, conn);
                
                com.Parameters.AddWithValue("@fname",txtname.Text);
                com.Parameters.AddWithValue("@lname", txtln.Text);
                com.Parameters.AddWithValue("@address" ,txtadd.Text);
                com.Parameters.AddWithValue("@country", ddcountry.SelectedItem.ToString() );
                com.Parameters.AddWithValue("@username", txtun.Text);
                com.Parameters.AddWithValue("@password", txtpass.Text);
                com.Parameters.AddWithValue("@email", txtemail.Text);

                com.ExecuteNonQuery();
               
                Response.Write("Registration is Successful...");

                conn.Close();

            }
            catch(Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }

            
        }
    }
}
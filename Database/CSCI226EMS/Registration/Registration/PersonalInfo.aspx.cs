using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Registration
{
    public partial class PersonalInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Mahima\Documents\226regi.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True");
            con.Open();
            SqlCommand com = new SqlCommand("PersonalInfo",con);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("Employee_Id", TextBox1.Text);
            com.Parameters.AddWithValue("Employee_Address", TextBox2.Text);
            com.Parameters.AddWithValue("Employee_Phone", TextBox3.Text);
            com.Parameters.AddWithValue("Employee_Age", TextBox4.Text);
            com.Parameters.AddWithValue("Marital_Status", TextBox5.Text);
            com.Parameters.AddWithValue("Experience", TextBox6.Text);
            com.ExecuteNonQuery();
            Response.Redirect("Users.aspx");
            con.Close();
        }
    }
}
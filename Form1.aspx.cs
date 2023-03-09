using System;
using System.Configuration;
using System.Data.SqlClient;


namespace web2
{
    public partial class Form1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();

        }





        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into Student(std_no,std_name,address,contact_no,nic,dob,course) values ('" + StdNoTxtBox.Text + "','" + StdNameTxtBox.Text + "','" + AddressTxtBox.Text + "','" + ContactTxtBox.Text + "','" + NicTxtBox.Text + "','" + DobTxtBox.Text + "','" + CourseList.Text + "')";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("std_no", StdNameTxtBox.Text);
                cmd.Parameters.AddWithValue("std_name", StdNoTxtBox.Text);
                cmd.Parameters.AddWithValue("address", AddressTxtBox.Text);
                cmd.Parameters.AddWithValue("contact_no", ContactTxtBox.Text);
                cmd.Parameters.AddWithValue("nic", NicTxtBox.Text);
                cmd.Parameters.AddWithValue("dob", DobTxtBox.Text);
                cmd.Parameters.AddWithValue("course", CourseList.Text);
                cmd.ExecuteNonQuery();

                Response.Write("Student registeration Successfully!!!thank you");

                conn.Close();

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }
        }
    }
}
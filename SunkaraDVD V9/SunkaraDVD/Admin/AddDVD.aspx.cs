using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Configuration;


namespace SunkaraDVD.Admin
{
    public partial class AddDVD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SqlConnection conn;
                SqlCommand comm;
                string connectionString = ConfigurationManager.ConnectionStrings["DVDconnstring"].ConnectionString;
                conn = new SqlConnection(connectionString);
                comm = new SqlCommand("INSERT INTO DVDtable (DVDtitle, DVDartist, DVDrating, DVDprice)"+
                         "VALUES (@DVDtitle, @DVDartist, @DVDrating, @DVDprice)", conn);
                comm.Parameters.Add("@DVDtitle", System.Data.SqlDbType.NVarChar,50);
                comm.Parameters["@DVDtitle"].Value = TextBox1.Text;
                comm.Parameters.Add("@DVDartist", System.Data.SqlDbType.NVarChar,50);
                comm.Parameters["@DVDartist"].Value = TextBox2.Text;
                comm.Parameters.Add("@DVDprice", System.Data.SqlDbType.Money);
                comm.Parameters["@DVDprice"].Value = TextBox3.Text;
                comm.Parameters.Add("@DVDrating", System.Data.SqlDbType.Int);
                comm.Parameters["@DVDrating"].Value = TextBox4.Text;
               
                try
                {
                    conn.Open();
                    comm.ExecuteNonQuery();
                    Response.Redirect("AddDVD.aspx", false);
                }
                catch(Exception ex)
                {
                    dbErrorMessage.Text = "Error adding the new movie! Please " + "try again later, and/ or change the entered data!";
                }
                finally
                {
                    conn.Close();
                }
            }


        }
    }
}
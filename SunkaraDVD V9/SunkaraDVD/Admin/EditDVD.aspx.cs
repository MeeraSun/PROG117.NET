using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

namespace SunkaraDVD.Admin
{
    public partial class EditDVD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDVDsList();
            }
        }
        private void LoadDVDsList()
        {
            SqlConnection conn;
            SqlCommand comm;
            SqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["DVDconnstring"].ConnectionString;
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("SELECT DVDID, DVDtitle FROM DVDtable", conn);
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                DVDsList.DataSource = reader;
                DVDsList.DataValueField = "DVDID"; //  note the binding here so we can use the ID

                DVDsList.DataTextField = "DVDtitle"; // but the part that shows is the user friendly name
                
                DVDsList.DataBind();
                reader.Close();
            }
            catch
            {
                dbErrorLabel.Text = "Error loading our list of DVDs! <br />";
            }
            finally
            {
                conn.Close();
            }
            updateButton.Enabled = false;
            deleteButton.Enabled = false;
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

            
        }
        protected void selectButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand comm;
            SqlDataReader reader;
            string connectionString = ConfigurationManager.ConnectionStrings["DVDconnstring"].ConnectionString;
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("SELECT DVDID, DVDtitle, DVDrating, DVDprice, DVDartist FROM DVDtable " +
                                  "WHERE DVDID =@DVDID", conn);
            comm.Parameters.Add("@DVDID", System.Data.SqlDbType.Int);
            comm.Parameters["@DVDID"].Value = DVDsList.SelectedItem.Value;
            try
            {
                conn.Open();
                reader = comm.ExecuteReader();
                if (reader.Read())
                {
                    TextBox1.Text = reader["DVDtitle"].ToString();
                    TextBox2.Text = reader["DVDartist"].ToString();
                    TextBox3.Text = reader["DVDrating"].ToString();
                    TextBox4.Text = reader["DVDprice"].ToString();
                }
                reader.Close();
                updateButton.Enabled = true;
                deleteButton.Enabled = true;
            }
            catch
            {
                dbErrorLabel.Text = "Error selecting this DVD! Please " + "try again later, and/ or select another DVD!";
            }
            finally
            {
                conn.Close();
            }
        }
        protected void updateButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["DVDconnstring"].ConnectionString;
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("UPDATE DVDtable SET DVDtitle = @DVDtitle, " +
                        "DVDartist =@DVDartist, DVDrating =@DVDrating, DVDprice =@DVDprice " +
                        "WHERE DVDID =@DVDID", conn);
            comm.Parameters.Add("@DVDtitle", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@DVDtitle"].Value = TextBox1.Text;
            comm.Parameters.Add("@DVDartist", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@DVDartist"].Value = TextBox2.Text;
            comm.Parameters.Add("@DVDrating", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@DVDrating"].Value = TextBox3.Text;
            comm.Parameters.Add("@DVDprice", System.Data.SqlDbType.NVarChar, 50);
            comm.Parameters["@DVDprice"].Value = TextBox4.Text;
            comm.Parameters.Add("@DVDID", System.Data.SqlDbType.Int);
            comm.Parameters["@DVDID"].Value = DVDsList.SelectedItem.Value;
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            catch
            {
                dbErrorLabel.Text = "Error updating the DVD! Please try again later, and/ or change the entered data!";
            }
            finally
            {
                conn.Close();
            }
            LoadDVDsList(); //This line will show the updated dropdown list 
        }

        protected void deleteButton_Click(object sender, EventArgs e)
        {
            SqlConnection conn;
            SqlCommand comm;
            string connectionString = ConfigurationManager.ConnectionStrings["DVDconnstring"].ConnectionString;
            conn = new SqlConnection(connectionString);
            comm = new SqlCommand("DELETE FROM DVDtable WHERE DVDID = @DVDID", conn);
            comm.Parameters.Add("@DVDID", System.Data.SqlDbType.Int);
            comm.Parameters["@DVDID"].Value = DVDsList.SelectedItem.Value;
            try
            {
                conn.Open();
                comm.ExecuteNonQuery();
            }
            catch
            {
                dbErrorLabel.Text = "Error deleting DVD! <br />";
            }
            finally
            {
                conn.Close();
            }
            LoadDVDsList();



        }

        protected void DVDlist_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("../Default.aspx");

        }
    }
}
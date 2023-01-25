using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Suresh
{
    public partial class Index : System.Web.UI.Page
    {

        public void Tbl_refresh()
        {
            SqlConnection connect = new SqlConnection("Data Source=GOKULSVICTUS\\SQLEXPRESS;Initial Catalog=suresh_db;Integrated Security=True");
            connect.Open();
            SqlCommand getData = new SqlCommand("GetTable", connect);
            getData.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(getData);
            DataTable dt = new DataTable();
            da.Fill(dt);
            TableView.DataSource = dt;
            TableView.DataBind();
            connect.Close();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            Tbl_refresh();
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection connect = new SqlConnection("Data Source=GOKULSVICTUS\\SQLEXPRESS;Initial Catalog=suresh_db;Integrated Security=True");
            connect.Open();
            SqlCommand cmd = new SqlCommand("sp_search", connect);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
            SqlDataReader readed;
            readed = cmd.ExecuteReader();

            if(readed.Read())
            {
                string status = readed["status"].ToString();
                if (status == "Online")
                {
                    
                }
                else if (status == "Busy")
                {

                }
                else if (status == "Offline")
                {

                }
            }
            else
            {
                Response.Write("What..?");
            }




            Tbl_refresh();
        }

   /*         SqlCommand cmd = new SqlCommand("sp_search_Username1", con);
        cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", txt_name.Text);
            cmd.ExecuteNonQuery();           

            SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
            grid1.DataSource = dt;
            grid1.DataBind();
*/

    }
}
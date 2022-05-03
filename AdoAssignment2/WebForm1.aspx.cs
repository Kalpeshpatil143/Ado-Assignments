using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


namespace AdoAssignment2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connect = ConfigurationManager.ConnectionStrings["makeconnection"].ConnectionString;

            BusDetails1(connect);

            BusDetails2(connect);

        }

        public void BusDetails1(String connect)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("Select BoardingPoint, TravelDate from BusInformation where Amount > 450", conn);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView1.DataSource = datareader;
                GridView1.DataBind();
            }
        }

        public void BusDetails2(String connect)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("Select BusID, DroppingPoint from BusInformation where TravelDate = '2017-12-10'", conn);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView2.DataSource = datareader;
                GridView2.DataBind();
            }
        }
    }
}
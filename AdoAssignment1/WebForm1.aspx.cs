using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace AdoAssignment1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String connect = ConfigurationManager.ConnectionStrings["makeconnection"].ConnectionString;

            WinTeam(connect);

            JapanMatch(connect);

        }

        public void WinTeam(String connect)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("Select * from FootballLeague where MatchStatus = 'Win'", conn);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView1.DataSource = datareader;
                GridView1.DataBind();
            }

        }

        public void JapanMatch(String connect)
        {
            using (SqlConnection conn = new SqlConnection(connect))
            {

                conn.Open();

                SqlCommand cmd = new SqlCommand("Select * from FootballLeague where TeamName1 = 'Japan' or TeamName2 = 'Japan'", conn);
                SqlDataReader datareader = cmd.ExecuteReader();

                GridView2.DataSource = datareader;
                GridView2.DataBind();
            }
        }
    }
}
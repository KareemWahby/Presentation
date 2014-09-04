using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Clubs_Database
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DbConn"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("CalTotalContracts", conn);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter totContracts = cmd.Parameters.Add("@total", SqlDbType.Int);
            totContracts.Direction = ParameterDirection.Output;

            SqlCommand cmd1 = new SqlCommand("CalTotalContractsMarketingRights", conn);
            cmd1.CommandType = CommandType.StoredProcedure;

            SqlParameter totMrights = cmd1.Parameters.Add("@total", SqlDbType.Int);
            totMrights.Direction = ParameterDirection.Output;

            SqlCommand cmd2 = new SqlCommand("CalTotalContractsTVRights", conn);
            cmd2.CommandType = CommandType.StoredProcedure;

            SqlParameter totTVrights = cmd2.Parameters.Add("@total", SqlDbType.Int);
            totTVrights.Direction = ParameterDirection.Output;

            SqlCommand cmd3 = new SqlCommand("TotalPaid", conn);
            cmd3.CommandType = CommandType.StoredProcedure;

            SqlParameter totpaid = cmd3.Parameters.Add("@tot", SqlDbType.Int);
            totpaid.Direction = ParameterDirection.Output;

            SqlCommand cmd4 = new SqlCommand("TotalDue", conn);
            cmd4.CommandType = CommandType.StoredProcedure;

            SqlParameter totdue = cmd4.Parameters.Add("@tot", SqlDbType.Int);
            totdue.Direction = ParameterDirection.Output;

            SqlCommand cmd4 = new SqlCommand("TotalDue", conn);
            cmd4.CommandType = CommandType.StoredProcedure;

            SqlParameter totdue = cmd4.Parameters.Add("@tot", SqlDbType.Int);
            totdue.Direction = ParameterDirection.Output;
            
            conn.Open();
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            conn.Close();

            totalContracts.Text=totContracts.Value.ToString()+totalContracts.Text;
            TotalMarketing.Text=totMrights.Value.ToString()+TotalMarketing.Text;
            TotalTv.Text = totTVrights.Value.ToString() + TotalTv.Text;
            TotalPaid.Text = totpaid.Value.ToString() + TotalPaid.Text;
            TotalDue.Text = totdue.Value.ToString() + TotalDue.Text;
        }
    }
}
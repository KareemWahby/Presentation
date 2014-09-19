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
            //General
            string connStr = ConfigurationManager.ConnectionStrings["DbConn"].ToString();
            SqlConnection conn = new SqlConnection(connStr);
           
            //total
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
            
            //season 1
            SqlCommand cmd5 = new SqlCommand("TotalSeason", conn);
            cmd5.CommandType = CommandType.StoredProcedure;
            cmd5.Parameters.Add(new SqlParameter("@s",1));
            SqlParameter totS1 = cmd5.Parameters.Add("@total", SqlDbType.Int);
            totS1.Direction=ParameterDirection.Output;

            SqlCommand cmd6 = new SqlCommand("TotalSeasontv", conn);
            cmd6.CommandType = CommandType.StoredProcedure;
            cmd6.Parameters.Add(new SqlParameter("@s", 1));
            SqlParameter totS1tv = cmd6.Parameters.Add("@total", SqlDbType.Int);
            totS1tv.Direction = ParameterDirection.Output;

            SqlCommand cmd7 = new SqlCommand("TotalSeasonMarketing", conn);
            cmd7.CommandType = CommandType.StoredProcedure;
            cmd7.Parameters.Add(new SqlParameter("@s", 1));
            SqlParameter totS1market = cmd7.Parameters.Add("@total", SqlDbType.Int);
            totS1market.Direction = ParameterDirection.Output;

            SqlCommand cmd8 = new SqlCommand("CalTotalDueSeason1", conn);
            cmd8.CommandType = CommandType.StoredProcedure;
            SqlParameter totS1due = cmd8.Parameters.Add("@total", SqlDbType.Int);
            totS1due.Direction = ParameterDirection.Output;

            SqlCommand cmd9 = new SqlCommand("CalTotalPaidSeason1", conn);
            cmd9.CommandType = CommandType.StoredProcedure;
            SqlParameter totS1paid = cmd9.Parameters.Add("@total", SqlDbType.Int);
            totS1paid.Direction = ParameterDirection.Output;

            //Season 2
            SqlCommand cmd10 = new SqlCommand("TotalSeason", conn);
            cmd10.CommandType = CommandType.StoredProcedure;
            cmd10.Parameters.Add(new SqlParameter("@s", 2));
            SqlParameter totS2 = cmd10.Parameters.Add("@total", SqlDbType.Int);
            totS2.Direction = ParameterDirection.Output;

            SqlCommand cmd11 = new SqlCommand("TotalSeasontv", conn);
            cmd11.CommandType = CommandType.StoredProcedure;
            cmd11.Parameters.Add(new SqlParameter("@s", 2));
            SqlParameter totS2tv = cmd11.Parameters.Add("@total", SqlDbType.Int);
            totS2tv.Direction = ParameterDirection.Output;

            SqlCommand cmd12 = new SqlCommand("TotalSeasonMarketing", conn);
            cmd12.CommandType = CommandType.StoredProcedure;
            cmd12.Parameters.Add(new SqlParameter("@s", 2));
            SqlParameter totS2market = cmd12.Parameters.Add("@total", SqlDbType.Int);
            totS2market.Direction = ParameterDirection.Output;

            SqlCommand cmd13 = new SqlCommand("CalTotalDueSeason2", conn);
            cmd13.CommandType = CommandType.StoredProcedure;
            SqlParameter totS2due = cmd13.Parameters.Add("@total", SqlDbType.Int);
            totS2due.Direction = ParameterDirection.Output;

            SqlCommand cmd14 = new SqlCommand("CalTotalPaidSeason2", conn);
            cmd14.CommandType = CommandType.StoredProcedure;
            SqlParameter totS2paid = cmd14.Parameters.Add("@total", SqlDbType.Int);
            totS2paid.Direction = ParameterDirection.Output;

            //Season 3
            SqlCommand cmd15 = new SqlCommand("TotalSeason", conn);
            cmd15.CommandType = CommandType.StoredProcedure;
            cmd15.Parameters.Add(new SqlParameter("@s", 3));
            SqlParameter totS3 = cmd15.Parameters.Add("@total", SqlDbType.Int);
            totS3.Direction = ParameterDirection.Output;

            SqlCommand cmd16 = new SqlCommand("TotalSeasontv", conn);
            cmd16.CommandType = CommandType.StoredProcedure;
            cmd16.Parameters.Add(new SqlParameter("@s", 3));
            SqlParameter totS3tv = cmd16.Parameters.Add("@total", SqlDbType.Int);
            totS3tv.Direction = ParameterDirection.Output;

            SqlCommand cmd17 = new SqlCommand("TotalSeasonMarketing", conn);
            cmd17.CommandType = CommandType.StoredProcedure;
            cmd17.Parameters.Add(new SqlParameter("@s", 3));
            SqlParameter totS3market = cmd17.Parameters.Add("@total", SqlDbType.Int);
            totS3market.Direction = ParameterDirection.Output;

            SqlCommand cmd18 = new SqlCommand("CalTotalDueSeason3", conn);
            cmd18.CommandType = CommandType.StoredProcedure;
            SqlParameter totS3due = cmd18.Parameters.Add("@total", SqlDbType.Int);
            totS3due.Direction = ParameterDirection.Output;

            SqlCommand cmd19 = new SqlCommand("CalTotalPaidSeason3", conn);
            cmd19.CommandType = CommandType.StoredProcedure;
            SqlParameter totS3paid = cmd19.Parameters.Add("@total", SqlDbType.Int);
            totS3paid.Direction = ParameterDirection.Output;

            //Season 4
            SqlCommand cmd20 = new SqlCommand("TotalSeason", conn);
            cmd20.CommandType = CommandType.StoredProcedure;
            cmd20.Parameters.Add(new SqlParameter("@s", 4));
            SqlParameter totS4 = cmd20.Parameters.Add("@total", SqlDbType.Int);
            totS4.Direction = ParameterDirection.Output;

            SqlCommand cmd21 = new SqlCommand("TotalSeasontv", conn);
            cmd21.CommandType = CommandType.StoredProcedure;
            cmd21.Parameters.Add(new SqlParameter("@s", 4));
            SqlParameter totS4tv = cmd21.Parameters.Add("@total", SqlDbType.Int);
            totS4tv.Direction = ParameterDirection.Output;

            SqlCommand cmd22 = new SqlCommand("TotalSeasonMarketing", conn);
            cmd22.CommandType = CommandType.StoredProcedure;
            cmd22.Parameters.Add(new SqlParameter("@s", 4));
            SqlParameter totS4market = cmd22.Parameters.Add("@total", SqlDbType.Int);
            totS4market.Direction = ParameterDirection.Output;

            SqlCommand cmd23 = new SqlCommand("CalTotalDueSeason4", conn);
            cmd23.CommandType = CommandType.StoredProcedure;
            SqlParameter totS4due = cmd23.Parameters.Add("@total", SqlDbType.Int);
            totS4due.Direction = ParameterDirection.Output;

            SqlCommand cmd24 = new SqlCommand("CalTotalPaidSeason4", conn);
            cmd24.CommandType = CommandType.StoredProcedure;
            SqlParameter totS4paid = cmd24.Parameters.Add("@total", SqlDbType.Int);
            totS4paid.Direction = ParameterDirection.Output;

            //Execution
            conn.Open();
            cmd.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            cmd5.ExecuteNonQuery();
            cmd6.ExecuteNonQuery();
            cmd7.ExecuteNonQuery();
            cmd8.ExecuteNonQuery();
            cmd9.ExecuteNonQuery();
            cmd10.ExecuteNonQuery();
            cmd11.ExecuteNonQuery();
            cmd12.ExecuteNonQuery();
            cmd13.ExecuteNonQuery();
            cmd14.ExecuteNonQuery();
            cmd15.ExecuteNonQuery();
            cmd16.ExecuteNonQuery();
            cmd17.ExecuteNonQuery();
            cmd18.ExecuteNonQuery();
            cmd19.ExecuteNonQuery();
            cmd20.ExecuteNonQuery();
            cmd21.ExecuteNonQuery();
            cmd22.ExecuteNonQuery();
            cmd23.ExecuteNonQuery();
            cmd24.ExecuteNonQuery();
            conn.Close();
            
            //total bind
            totalContracts.Text=totContracts.Value.ToString()+" LE";
            TotalMarketing.Text = totMrights.Value.ToString() + " LE";
            TotalTv.Text = totTVrights.Value.ToString() + " LE";
            TotalPaid.Text = totpaid.Value.ToString() + " LE";
            TotalDue.Text = totdue.Value.ToString() + " LE";
            
            //s1 bind
            s1tot.Text = totS1.Value.ToString() + " LE";
            s1mr.Text = totS1market.Value.ToString() + " LE";
            s1tvr.Text = totS1tv.Value.ToString() + " LE";
            s1paid.Text = totS1paid.Value.ToString() + " LE";
            s1due.Text = totS1due.Value.ToString() + " LE";

            //s2 bind
            s2tot.Text = totS2.Value.ToString() + " LE";
            s2mr.Text = totS2market.Value.ToString() + " LE";
            s2tvr.Text = totS2tv.Value.ToString() + " LE";
            s2paid.Text = totS2paid.Value.ToString() + " LE";
            s2due.Text = totS2due.Value.ToString() + " LE";

            //s3 bind
            s3tot.Text = totS3.Value.ToString() + " LE";
            s3mr.Text = totS3market.Value.ToString() + " LE";
            s3tvr.Text = totS3tv.Value.ToString() + " LE";
            s3paid.Text = totS3paid.Value.ToString() + " LE";
            s3due.Text = totS3due.Value.ToString() + " LE";

            //s4 bind
            s4tot.Text = totS4.Value.ToString() + " LE";
            s4mr.Text = totS4market.Value.ToString() + " LE";
            s4tvr.Text = totS4tv.Value.ToString() + " LE";
            s4paid.Text = totS4paid.Value.ToString() + " LE";
            s4due.Text = totS4due.Value.ToString() + " LE";

        }

        protected void Totbtn_Click(object sender, EventArgs e)
        {
            if (MV.ActiveViewIndex == 0 && MV.Visible)
            {
                MV.Visible = false;
            }
            else
            {
                MV.Visible = true;
                MV.SetActiveView(View1);
            }
            
        }

        protected void S1btn_Click(object sender, EventArgs e)
        {
            if (MV.ActiveViewIndex == 1 && MV.Visible)
            {
                MV.Visible = false;
            }
            else
            {
                MV.Visible = true;
                MV.SetActiveView(View2);
            }
        }

        protected void S2btn_Click(object sender, EventArgs e)
        {
            if (MV.ActiveViewIndex == 2 && MV.Visible)
            {
                MV.Visible = false;
            }
            else
            {
            MV.Visible = true;
            MV.SetActiveView(View3);
            }
        }

        protected void S3btn_Click(object sender, EventArgs e)
        {
            if (MV.ActiveViewIndex == 3 && MV.Visible)
            {
                MV.Visible = false;
            }
            else
            {
            MV.Visible = true;
            MV.SetActiveView(View4);
            }
        }

        protected void S4btn_Click(object sender, EventArgs e)
        {
            if (MV.ActiveViewIndex == 4 && MV.Visible)
            {
                MV.Visible = false;
            }
            else
            {
            MV.Visible = true;
            MV.SetActiveView(View5);
            }
        }
    }
}
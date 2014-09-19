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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signin(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["DbConn"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand cmd = new SqlCommand("SignIn", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            string _username = username.Text;
            string _password = password.Text;
            string s="";
            cmd.Parameters.Add(new SqlParameter("@username", _username));

            cmd.Parameters.Add(new SqlParameter("@password", _password));

            // output parm
            SqlParameter success = cmd.Parameters.Add("@success", SqlDbType.Int);
            success.Direction = ParameterDirection.Output;

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            if (success.Value.ToString().Equals("1")){
                s="succsess";
            }
            else{
                s="failure";
            }
            L1.Text = s;
        }
    }
}
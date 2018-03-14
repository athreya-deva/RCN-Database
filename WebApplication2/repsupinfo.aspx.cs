using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.Data;


namespace WebApplication2
{
    public partial class repsupinfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void repsupcode_SelectedIndexChanged(object sender, EventArgs e)
        {
            String strConnString = ConfigurationManager
                           .ConnectionStrings["masterdatabase"].ConnectionString;
            String strQuery = "select * from repsupinfo where" +
                              " code = @code";
            SqlConnection con = new SqlConnection(strConnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@code", repsupcode.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                SqlDataReader sdr = cmd.ExecuteReader();
                while (sdr.Read())
                {
                    name.Text = sdr[0].ToString();
                    region.Text = sdr["region"].ToString();
                    country.Text = sdr["country"].ToString();
                    name.Text = sdr["name"].ToString();
                    slm.Text = sdr["slmresponsible"].ToString();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
}
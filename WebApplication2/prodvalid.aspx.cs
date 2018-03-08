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

namespace WebApplication2
{
    public partial class prodvalid : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["triggersme"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [crform]", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            grid1.DataSource = rdr;
            grid1.DataBind();
            con.Close();

        }
    }
}
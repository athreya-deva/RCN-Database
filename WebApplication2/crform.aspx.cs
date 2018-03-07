using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data;
using System.Net;
using OpenPop.Pop3;
using OpenPop.Mime;
using System.Net.Security;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;


namespace WebApplication2
{
    public partial class _prdvld : Page
    {

        protected void upld_Click(object sender, EventArgs e)
        {

            try
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["masterdatabase"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into [crform] (fname,lname,date,priority,module,reasrelease,reqtype,nlrmno,nlrcpno,nlrdesc,nlrcrev,nlrcusagequan,desc,stock,changeclasification,comments,remarks,approval) values (@fname,@lname,@date,@priority,@module,@reasrelease,@reqtype,@nlrmno,@nlrcpno,@nlrdesc,@nlrcrev,@nlrcusagequan,@desc,@stock,@changeclasification,@comments,@remarks,@approval)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@fname", SqlDbType.NVarChar).Value = txttype.Text;
                cmd.Parameters.AddWithValue("@lname", SqlDbType.NVarChar).Value = date.Text;
                cmd.Parameters.AddWithValue("@date", SqlDbType.NVarChar).Value = priority.Text;
                cmd.Parameters.AddWithValue("@priority", SqlDbType.NVarChar).Value = module.Text;
                cmd.Parameters.AddWithValue("@module", SqlDbType.NVarChar).Value = txtrev.Text;
                cmd.Parameters.AddWithValue("@reasrelease", SqlDbType.NVarChar).Value = txtusage.Text;
                cmd.Parameters.AddWithValue("@reqtype", SqlDbType.NVarChar).Value = nlrmno.Text;
                cmd.Parameters.AddWithValue("@nlrmno", SqlDbType.NVarChar).Value = nlrcpno.Text;
                cmd.Parameters.AddWithValue("@nlrcpno", SqlDbType.NVarChar).Value = nlrcdesc.Text;
                cmd.Parameters.AddWithValue("@nlrdesc", SqlDbType.NVarChar).Value = nlrrev.Text;
                cmd.Parameters.AddWithValue("@nlrcrev", SqlDbType.NVarChar).Value = nlrrev.Text;
                cmd.Parameters.AddWithValue("@nlrcusagequan", SqlDbType.NVarChar).Value = nlrrev.Text;
                cmd.Parameters.AddWithValue("@desc", SqlDbType.NVarChar).Value = nlrrev.Text;
                cmd.Parameters.AddWithValue("@stock", SqlDbType.NVarChar).Value = nlrrev.Text;
                cmd.Parameters.AddWithValue("@changeclasification", SqlDbType.NVarChar).Value = nlrrev.Text;
                cmd.Parameters.AddWithValue("@comments", SqlDbType.NVarChar).Value = nlrrev.Text;
                cmd.Parameters.AddWithValue("@remarks", SqlDbType.NVarChar).Value = nlrrev.Text;
                cmd.Parameters.AddWithValue("@approval", SqlDbType.NVarChar).Value = nlrrev.Text;


                cmd.ExecuteNonQuery();
                Response.Write("Triggered to SME successfully");
                Response.Redirect("triggers.aspx");
                btnnxt.PostBackUrl = "~/triggers.aspx";
            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }
    }
       
}
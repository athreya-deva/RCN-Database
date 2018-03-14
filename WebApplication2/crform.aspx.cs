using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using OpenPop.Pop3;
using OpenPop.Mime;
using System.Net.Security;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Configuration;
using System.Data;


namespace WebApplication2
{
    public partial class _prdvld : Page
    { 
         protected void Page_Load(object sender, EventArgs e)
         {

            SmtpClient client = new SmtpClient();
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.EnableSsl = true;
            client.Host = "smtp.gmail.com";
            client.Port = 587;

            // setup Smtp authentication
            System.Net.NetworkCredential credentials =
                new System.Net.NetworkCredential("athreya.deva@gmail.com", "9865277943");
            client.UseDefaultCredentials = false;
            client.Credentials = credentials;

            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("athreya.deva@gmail.com");
            msg.To.Add(new MailAddress("devanathan4444@gmail.com"));

            msg.Subject = "This is a test Email subject";
            msg.IsBodyHtml = true;
            msg.Body = string.Format("<html><head></head><body><b>Test HTML Email<br>ASP INTEGRATED MAIL</b></body>");

            try
            {
                client.Send(msg);

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());


            }

        }
          
    

        protected void upld_Click(object sender, EventArgs e)
        {


            try
            {
                date.Text = DateTime.Now.ToShortDateString();
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["masterdatabase"].ConnectionString);
                conn.Open();
                string insertQuery = "insert into [crform] (fname,lname,date,priority,module,reasrelease,reqtype,nlrmno,nlrcpno,nlrdesc,nlrcrev,nlrcusagequan,desc,stock,changeclasification,comments,remarks,approval) values (@fname,@lname,@date,@priority,@module,@reasrelease,@reqtype,@nlrmno,@nlrcpno,@nlrdesc,@nlrcrev,@nlrcusagequan,@desc,@stock,@changeclasification,@comments,@remarks,@approval)";
                SqlCommand cmd = new SqlCommand(insertQuery, conn);
                cmd.Parameters.AddWithValue("@fname", SqlDbType.NVarChar).Value = fname.Text;
                cmd.Parameters.AddWithValue("@lname", SqlDbType.NVarChar).Value = lname.Text;
                cmd.Parameters.AddWithValue("@date", SqlDbType.Date).Value = date.Text;
                cmd.Parameters.AddWithValue("@priority", SqlDbType.Int).Value = priority.Text;
                cmd.Parameters.AddWithValue("@module", SqlDbType.NVarChar).Value = module.Text;
                cmd.Parameters.AddWithValue("@reasrelease", reasrelease.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@reqtype", reqtype.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@nlrmno", SqlDbType.Int).Value = nlrmno.Text;
                cmd.Parameters.AddWithValue("@nlrcpno", SqlDbType.Int).Value = nlrcpno.Text;
                cmd.Parameters.AddWithValue("@nlrdesc", SqlDbType.NVarChar).Value = nlrcdesc.Text;
                cmd.Parameters.AddWithValue("@nlrcrev", SqlDbType.NVarChar).Value = nlrrev.Text;
                cmd.Parameters.AddWithValue("@nlrcusagequan", SqlDbType.NVarChar).Value = nlrcuquan.Text;
                cmd.Parameters.AddWithValue("@desc", SqlDbType.NVarChar).Value = desc.Text;
                cmd.Parameters.AddWithValue("@stock", stockdisp.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@changeclasification", clasification.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@comments", SqlDbType.Text).Value = comments.Text;
                cmd.Parameters.AddWithValue("@remarks", SqlDbType.Text).Value = remarks.Text;
                cmd.Parameters.AddWithValue("@approval", SqlDbType.NVarChar).Value = approval.Text;


                cmd.ExecuteNonQuery();
                

            }
            catch (Exception ex)
            {
                Response.Write("error" + ex.ToString());
            }

        }

      
    }
       
}
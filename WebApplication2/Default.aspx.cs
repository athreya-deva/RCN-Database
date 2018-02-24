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

namespace WebApplication2
{
    public partial class _prdvld : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void type_SelectedIndexChanged(object sender, EventArgs e)
        {
            dr.Enabled = type.SelectedValue == "DR/SO/FRO";
            
            if (type.SelectedItem.Value == "DR/SO/FRO")
            {
                dr.Enabled = true;
            }

            else if (type.SelectedItem.Value == "QA")
            {

                Response.Redirect("crform.aspx");
                dr.Enabled = false;
            }

            else if (type.SelectedItem.Value == "OEM")
            {
                Response.Redirect("crform.aspx");
                dr.Enabled = false;
            }
            else if (type.SelectedItem.Value == "STD")
            {
                Response.Redirect("crform.aspx");
                dr.Enabled =false;

           }
            else if (type.SelectedItem.Value == "")
            {
                dr.Enabled = false;
            }
        }

        protected void dr_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (dr.SelectedItem.Value == "DR MAIL")
            {
                Pop3Client pop3Client;
                try
                {
                    if (Session["Pop3Client"] == null)
                    {
                        pop3Client = new Pop3Client();
                        pop3Client.Connect("pop.gmail.com", 995, true);
                        pop3Client.Authenticate("athreya.deva@gmail.com", "9865277943");
                        Session["Pop3Client"] = pop3Client;
                        lblMsg1.Text = "succesfully connected to your mail";
                    }
                    else
                    {
                        pop3Client = (Pop3Client)Session["Pop3Client"];
                    }
                    int count = pop3Client.GetMessageCount();
                    DataTable dtMessages = new DataTable();
                    dtMessages.Columns.Add("MessageNumber");
                    dtMessages.Columns.Add("From");
                    dtMessages.Columns.Add("Subject");
                    dtMessages.Columns.Add("DateSent");
                    int counter = 0;
                    for (int i = count; i >= 1; i--)
                    {
                        Message message = pop3Client.GetMessage(i);
                        dtMessages.Rows.Add();
                        dtMessages.Rows[dtMessages.Rows.Count - 1]["MessageNumber"] = i;
                        dtMessages.Rows[dtMessages.Rows.Count - 1]["From"] = message.Headers.From.Address;
                        dtMessages.Rows[dtMessages.Rows.Count - 1]["Subject"] = message.Headers.Subject;
                        dtMessages.Rows[dtMessages.Rows.Count - 1]["DateSent"] = message.Headers.DateSent.ToLocalTime();
                        counter++;
                        if (counter > 15)
                        {
                            break;
                        }
                    }
                    gvEmails.DataSource = dtMessages;
                    gvEmails.DataBind();
                }
                catch (Exception ex)
                {

                    lblMsg1.Text = "Error occured while connecting to your mail" + ex.Message;
                }
               
            }

            else if (dr.SelectedItem.Value == "CHANGE REQUEST FORM")
            {

                Response.Redirect("crform.aspx");
                
            }

        }
    }
}
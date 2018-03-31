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
        string otp = string.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            sme.Enabled = false;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["masterdatabase"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from [crform] ", con);
            SqlDataReader rdr = cmd.ExecuteReader();
            grid1.DataSource = rdr;
            grid1.DataBind();

            con.Close();



        }

        protected void gipt_Click(object sender, EventArgs e)
        {
            string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
            string numbers = "1234567890";

            string characters = numbers;
            if (dd.SelectedItem.Value == "YES")
            {
                characters += alphabets + small_alphabets + numbers;
                int length = int.Parse("8");
               
                for (int i = 0; i < length; i++)
                {
                    string character = string.Empty;
                    do
                    {
                        int index = new Random().Next(0, characters.Length);
                        character = characters.ToCharArray()[index].ToString();
                    } while (otp.IndexOf(character) != -1);
                    otp += character;
                }
                lbl.Text = "Generated ITP is" + otp;
                close.Enabled = false;
                
                sme.Enabled = true;
              

            }
            else
            {
                lbl.Text = "IPT can be only generated only if there is any repair impact";
                sme.Enabled = false;
                
            }
            

        }

        protected void sme_Click(object sender, EventArgs e)
        {

            Session["ipt"] = otp;
            Response.Redirect("sme.aspx");

        }
    }

}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class sme : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ipt"] != null)
                lbl1.Text = Session["ipt"].ToString();
            string alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            string small_alphabets = "abcdefghijklmnopqrstuvwxyz";
            string numbers = "1234567890";
            string otp = string.Empty;
            string characters = numbers;
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
            lbl1.Text = otp;

        }
        protected void sme_Click(object sender, EventArgs e)
        {
            if (Session["ipt"] != null)
                lbl1.Text = Session["ipt"].ToString();


        }

    }
}
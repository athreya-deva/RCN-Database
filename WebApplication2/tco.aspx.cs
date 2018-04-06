using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class tco : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            string inr = lcost.Text;
            int i = Int32.Parse(inr);
           
          
            lcosti.Text = "$"+ i*60;
        }

        protected void mcost_TextChanged(object sender, EventArgs e)
        {
            string inr = mcost.Text;
            int i = Int32.Parse(inr);


            mcosti.Text = "$" + i * 60;

        }

        protected void tcost_TextChanged(object sender, EventArgs e)
        {
            string inr = tcost.Text;
            int i = Int32.Parse(inr);
            tcosti.Text = "$" + i * 60;
        }
    }
}
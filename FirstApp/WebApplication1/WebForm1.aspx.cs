using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_click(object sender, EventArgs e) {
            int x = Convert.ToInt32(TextBox1.Text);
            int y = Convert.ToInt32(TextBox2.Text);

            int z = x + y;
            Label3.Text = z.ToString();

        }
    }
}
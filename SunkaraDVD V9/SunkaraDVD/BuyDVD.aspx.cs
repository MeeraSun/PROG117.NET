using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SunkaraDVD
{
    public partial class BuyDVD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BuyLabel.Text = Request.QueryString["id"];
        }
    }
}
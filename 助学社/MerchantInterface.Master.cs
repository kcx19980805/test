using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace 助学社
{
    public partial class MerchantInterface : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("MerchantLogin.aspx");
        }
    }
}
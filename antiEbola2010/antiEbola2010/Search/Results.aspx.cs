using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web;

namespace antiEbola2010.Search
{
    public partial class Results : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lbFN.Text = Request.QueryString.Get("p1") + "+" + Request.QueryString.Get("p2") + "+" + Request.QueryString.Get("p3");
        }
    }
}
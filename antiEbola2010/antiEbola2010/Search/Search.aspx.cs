using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace antiEbola2010.Search
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void lnkSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Search/Results.aspx?p1=" + txtFN.Text + "&p2=" + txtLN.Text + "&p3=" + ddlCty.SelectedValue);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using antiEbKernel;

namespace antiEbola2010.Input
{
    public partial class Input : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            // populate the list somehow

            if (!IsPostBack)
            {
                ddlCty.Items.Clear();
                Class1 cl = new Class1();
                cl.ReadLocationList("select * from Location;");

                foreach (Location lo in cl.mLocationList)
                {
                    ListItem it = new ListItem(lo.CountryName, lo.IDCountry.ToString());
                    ddlCty.Items.Add(it);
                }

                //System.Console.WriteLine("Element #{0}: {1}", count, element);

                //ddl.DataSource = cl.mLocationList 
                //ddl.DataBind();

                //ddl.SelectedValue = list.Find(o => o.Selected == true).Id.ToString();
            }
        }

        protected void lnkSave_Click(object sender, EventArgs e)
        {
            Class1 cl = new Class1();
            cl.Insert("Insert into person values (null,'" + txtFN.Text + "','" + txtLN.Text + "',0,0,0,'" + ddlCty.SelectedValue + "',1)");
        }

        protected void lnkClear_Click(object sender, EventArgs e)
        {
            txtFN.Text = "";
            txtLN.Text = "";
        }
    }
}
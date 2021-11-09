using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ogrBilgiSistemi
{
    public partial class ymenu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ogrIslBtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ogrenciIslem.aspx");
        }

        protected void ogtIslBtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("ogretmenIslem.aspx");
        }

        protected void dersIslBtn_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("kurEkle.aspx");
        }

        protected void ogrencibutton_Click(object sender, EventArgs e)
        {
            Response.Redirect("ogrenciIslem.aspx");
        }
    }
}
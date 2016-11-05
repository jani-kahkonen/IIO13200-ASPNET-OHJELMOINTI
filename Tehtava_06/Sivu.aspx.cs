using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sivu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        XmlSourceRecord.XPath = String.Format("/Records/genre/record[@ISBN='{0}']", Request.QueryString["record"]);

        XmlSourceSong.XPath = String.Format("/Records/genre/record[@ISBN='{0}']/song", Request.QueryString["record"]);
    }
}
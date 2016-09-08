using System;
using System.Configuration; // Web config
using System.Data; // Data
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tyontekijat : System.Web.UI.Page
{
    string xmlfilu;

    protected void Page_Load(object sender, EventArgs e)
    {
        // Haetaan web.cinfig xml-tiedoston nimi.
        xmlfilu = ConfigurationManager.AppSettings["xmlfilu"];

        lblMessages.Text = xmlfilu;
    }

    protected void btnHae_Click(object sender, EventArgs e)
    {
        // Haetaan XML-data DataView oliooon, joka kytketään GridViewhin.
        DataSet dataSet = new DataSet();
        DataTable dataTable = new DataTable();
        DataView dataView = new DataView();

        dataSet.ReadXml(Server.MapPath(xmlfilu)); // Huom. MapPath muuttaa viittauksen sivulle.

        dataTable = dataSet.Tables[0];
        dataView = dataTable.DefaultView;
        gvData.DataSource = dataView;
        gvData.DataBind();
    }
}
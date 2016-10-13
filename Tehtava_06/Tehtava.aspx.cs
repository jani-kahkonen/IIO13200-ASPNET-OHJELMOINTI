using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Tehtava : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // Create a new DataSet to read from the XML.
        System.Data.DataSet data_set = new DataSet();

        // Tell the DataReader from which file to read.
        data_set.ReadXml(MapPath(WebConfigurationManager.AppSettings["xml-file"]));

        // Set the DataSource property of the DataGrid to the DataSet.
        DataGrid.DataSource = data_set;

        // Bind.
        DataGrid.DataBind();
    }
}
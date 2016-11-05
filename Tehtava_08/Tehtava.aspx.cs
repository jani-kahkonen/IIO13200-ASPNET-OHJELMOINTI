using System;
using System.Collections.Generic;
using System.Xml;

public partial class Tehtava : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void MyListBox_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            ScheduleSource.DataFile = String.Format(@"http://www.finnkino.fi/xml/Schedule/?area={0}", MyListBox.SelectedValue);

            ScheduleRepeater.DataSourceID = ScheduleSource.ID;
            ScheduleRepeater.DataBind();

            MyLiteral.Text = String.Format("Elokuvateatteri {0}", MyListBox.SelectedItem);
        }
        catch (Exception ex)
        {
            MyLiteral.Text = ex.Message;
        }
    }
}
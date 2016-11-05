using System;
using System.Net;
using Newtonsoft.Json;

public partial class Tehtava : System.Web.UI.Page
{
    private static string path_string;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void dropDownList_SelectedIndexChanged(object sender, EventArgs e)
    {
        path_string = System.Configuration.ConfigurationManager.AppSettings["station"] + dropDownList.SelectedValue.ToString();
    }

    protected async void btnSearch_Click(object sender, EventArgs e)
    {
        string json_string;

        try
        {
            using (WebClient webClient = new WebClient())
            {
                json_string = await webClient.DownloadStringTaskAsync(path_string);
            }

            dataGrid.DataSource = JsonConvert.DeserializeObject<dynamic>(json_string);

            dataGrid.DataBind();

            lblResult.Text = string.Empty;
        }
        catch (Exception ex)
        {
            lblResult.Text = ex.Message;
        }
    }
}
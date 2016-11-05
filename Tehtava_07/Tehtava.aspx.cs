using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Web.UI.WebControls;
using System.Xml;

public partial class Tehtava : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            DateTime today = DateTime.Today;

            txtDate.Text = today.ToString("yyyy.MM.dd");
        }
    }

    protected void btnSendXML_Click(object sender, EventArgs e)
    {
        if (txtDate.Text != string.Empty && txtName.Text != string.Empty && txtCourse.Text != string.Empty)
        {
            string connection_string = ConfigurationManager.AppSettings["XML"];

            try
            {
                XmlDocument xmlDocument = new XmlDocument();
                xmlDocument.Load(Server.MapPath(connection_string));

                XmlNode rootNode = xmlDocument.SelectSingleNode("palautteet");
                XmlNode xmlNode = rootNode.AppendChild(xmlDocument.CreateNode(XmlNodeType.Element, "palaute", ""));

                xmlNode.AppendChild(xmlDocument.CreateNode(XmlNodeType.Element, "pvm", "")).InnerText = txtDate.Text;
                xmlNode.AppendChild(xmlDocument.CreateNode(XmlNodeType.Element, "tekija", "")).InnerText = txtName.Text;
                xmlNode.AppendChild(xmlDocument.CreateNode(XmlNodeType.Element, "koodi", "")).InnerText = txtCourse.Text;
                xmlNode.AppendChild(xmlDocument.CreateNode(XmlNodeType.Element, "opittu", "")).InnerText = txtEvaluationA.Text;
                xmlNode.AppendChild(xmlDocument.CreateNode(XmlNodeType.Element, "haluanoppia", "")).InnerText = txtEvaluationB.Text;
                xmlNode.AppendChild(xmlDocument.CreateNode(XmlNodeType.Element, "hyvaa", "")).InnerText = txtFeedbackA.Text;
                xmlNode.AppendChild(xmlDocument.CreateNode(XmlNodeType.Element, "parannettavaa", "")).InnerText = txtFeedbackB.Text;
                xmlNode.AppendChild(xmlDocument.CreateNode(XmlNodeType.Element, "muuta", "")).InnerText = txtFeedbackC.Text;

                xmlDocument.Save(Server.MapPath(connection_string));
            }
            catch (Exception ex)
            {

                lblMessage.Text = ex.Message;
            }
        }
    }

    protected void btnSendSQL_Click(object sender, EventArgs e)
    {
        if (txtDate.Text != string.Empty && txtName.Text != string.Empty && txtCourse.Text != string.Empty)
        {
            string connection_string = ConfigurationManager.ConnectionStrings["SQL"].ConnectionString;

            try
            {
                MySqlConnection mySqlConnection = new MySqlConnection(connection_string);
                mySqlConnection.Open();

                MySqlCommand mySqlCommand = mySqlConnection.CreateCommand();
                mySqlCommand.CommandText = "INSERT INTO palaute(pvm, tekija, opintojakso, opittu, haluanoppia, hyvaa, parannettavaa, muuta) VALUES(@pvm, @tekija, @opintojakso, @opittu, @haluanoppia, @hyvaa, @parannettavaa, @muuta)";
                mySqlCommand.Parameters.AddWithValue("@pvm", txtDate.Text);
                mySqlCommand.Parameters.AddWithValue("@tekija", txtName.Text);
                mySqlCommand.Parameters.AddWithValue("@opintojakso", txtCourse.Text);
                mySqlCommand.Parameters.AddWithValue("@opittu", txtEvaluationA.Text);
                mySqlCommand.Parameters.AddWithValue("@haluanoppia", txtEvaluationB.Text);
                mySqlCommand.Parameters.AddWithValue("@hyvaa", txtFeedbackA.Text);
                mySqlCommand.Parameters.AddWithValue("@parannettavaa", txtFeedbackB.Text);
                mySqlCommand.Parameters.AddWithValue("@muuta", txtFeedbackC.Text);
                mySqlCommand.ExecuteNonQuery();

                mySqlConnection.Close();
            }
            catch (Exception ex)
            {

                lblMessage.Text = ex.Message;
            }
        }
    }

    protected void myCustomValidator_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (txtDate.Text == string.Empty || txtName.Text == string.Empty || txtCourse.Text == string.Empty)
        {
            myCustomValidator.ErrorMessage = string.Format("Täytä tarvittavat tiedot.");

            args.IsValid = false;
        }
        else
        {
            myCustomValidator.ErrorMessage = string.Empty;

            args.IsValid = true;
        }
    }

    protected void btnLoadXML_Click(object sender, EventArgs e)
    {
        string connection_string = ConfigurationManager.AppSettings["XML"];

        try
        {
            DataSet dataSet = new DataSet();
            dataSet.ReadXml(Server.MapPath(connection_string));

            gvFeedback.DataSource = dataSet;
            gvFeedback.DataBind();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }

    protected void btnLoadSQL_Click(object sender, EventArgs e)
    {
        string connection_string = ConfigurationManager.ConnectionStrings["SQL"].ConnectionString;

        try
        {
            MySqlConnection mySqlConnection = new MySqlConnection(connection_string);
            mySqlConnection.Open();

            MySqlDataAdapter mySqlDataAdapter = new MySqlDataAdapter(new MySqlCommand("SELECT * FROM palaute;", mySqlConnection));

            DataSet dataSet = new DataSet();
            mySqlDataAdapter.Fill(dataSet);

            gvFeedback.DataSource = dataSet;
            gvFeedback.DataBind();

            mySqlConnection.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
    }
}
using System;
using System.Linq;
using System.Web.UI.WebControls;

public partial class Tehtava : System.Web.UI.Page
{
    protected static DemoxOyEntities demoxOyEntities = new DemoxOyEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            try
            {
                var countryQuery = from c in demoxOyEntities.asiakas orderby c.maa select new { c.maa };
                ddlCountry.DataValueField = "maa";
                ddlCountry.DataTextField = "maa";
                ddlCountry.DataSource = countryQuery.Distinct().ToList();

                ddlCountry.DataBind();
            }
            catch (Exception ex)
            {
                lblMessage.Text = string.Format("Virhe: {0}", ex.Message);
            }
        }
    }

    protected void bttSearchA_Click(object sender, EventArgs e)
    {
        try
        {
            var countryQuery = from c in demoxOyEntities.asiakas select c;

            gvCustomer.DataSource = countryQuery.ToList();

            gvCustomer.DataBind();
        }
        catch (Exception ex)
        {
            lblMessage.Text = string.Format("Virhe: {0}", ex.Message);
        }
    }

    protected void bttSearchB_Click(object sender, EventArgs e)
    {
        try
        {
            var countryQuery = from c in demoxOyEntities.asiakas orderby c.maa select c;

            gvCustomer.DataSource = countryQuery.ToList();

            gvCustomer.DataBind();
        }
        catch (Exception ex)
        {
            lblMessage.Text = string.Format("Virhe: {0}", ex.Message);
        }
    }

    protected void bttSearchC_Click(object sender, EventArgs e)
    {
        try
        {
            var countryQuery = from c in demoxOyEntities.asiakas where c.maa == ddlCountry.SelectedValue select c;

            gvCustomer.DataSource = countryQuery.ToList();

            gvCustomer.DataBind();
        }
        catch (Exception ex)
        {
            lblMessage.Text = string.Format("Virhe: {0}", ex.Message);
        }
    }

    protected void bttCreateA_Click(object sender, EventArgs e)
    {
        try
        {
            demoxOyEntities.asiakas.Add(new asiakas
            {
                asnimi = txtName.Text,
                astunnus = txtCode.Text,
                asvuosi = short.Parse(txtYear.Text),
                maa = txtCountry.Text,
                ostot = double.Parse(txtPurchase.Text),
                postinro = txtPostCode.Text,
                postitmp = txtPostOffice.Text,
                yhteyshlo = txtContact.Text
            });

            demoxOyEntities.SaveChanges();

            gvCustomer.DataBind();
        }
        catch (Exception ex)
        {
            lblMessage.Text = string.Format("Virhe: {0}", ex.Message);
        }
    }
}
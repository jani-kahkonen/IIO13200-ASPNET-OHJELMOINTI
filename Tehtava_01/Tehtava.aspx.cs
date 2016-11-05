using System;
using System.Configuration;

public partial class Tehtava : System.Web.UI.Page
{
    private double glass_price = 0;

    private double aluminum_price = 0;

    private double work_price = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        glass_price = Double.Parse(ConfigurationManager.AppSettings["Glass_price"]);

        aluminum_price = Double.Parse(ConfigurationManager.AppSettings["Aluminum_price"]);

        work_price = Double.Parse(ConfigurationManager.AppSettings["Work_price"]);
    }

    protected double calculate_area(double l, double h)
    {
        return (l * h);
    }

    protected double calculate_perimeter(double l, double h)
    {
        return (l * 2) + (h * 2);
    }

    protected double calculate_price(double l, double h, double w)
    {
        return (1 + 0.3) * ((calculate_area(w, h) * glass_price) + (calculate_perimeter(w, h) * aluminum_price + work_price));
    }

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        try
        {
            txtArea.Text = calculate_area(Double.Parse(txtLength.Text), Double.Parse(txtHeight.Text)).ToString();

            txtPerimeter.Text = calculate_perimeter(Double.Parse(txtLength.Text), Double.Parse(txtHeight.Text)).ToString();

            txtPrice.Text = calculate_price(Double.Parse(txtLength.Text), Double.Parse(txtHeight.Text), Int32.Parse(txtWidth.Text)).ToString();

            lblError.Text = String.Empty;
        }
        catch (Exception ex)
        {
            lblError.Text = ex.Message;
        }
    }
}
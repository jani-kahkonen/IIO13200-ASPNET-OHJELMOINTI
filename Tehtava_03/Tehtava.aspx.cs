using System;

public partial class Tehtava : System.Web.UI.Page
{
    private static DateTime selected_date = DateTime.Today;

    protected void Page_Load(object sender, EventArgs e)
	{
        lblCurrentDay.Text = Calendar.TodaysDate.ToShortDateString();
    }

    protected void Calendar_SelectionChanged(object sender, EventArgs e)
	{
		try
		{
            lblSelectedDay.Text = Calendar.SelectedDate.ToShortDateString();

            lblDifference.Text = Calendar.SelectedDate.Subtract(Calendar.TodaysDate).TotalDays.ToString();
		}
		catch (Exception ex)
		{
			lblError.Text = ex.Message;
		}
	}

    protected void btnNextYear_Click(object sender, EventArgs e)
    {
        selected_date = selected_date.AddYears(+1);

        Calendar.VisibleDate = selected_date;
    }

    protected void btnPrevYear_Click(object sender, EventArgs e)
    {
        selected_date = selected_date.AddYears(-1);

        Calendar.VisibleDate = selected_date;
    }
}
using System;

public partial class Tehtava : System.Web.UI.Page
{
    protected int current_year;

    protected void Page_Load(object sender, EventArgs e)
	{
        lblCurrentDay.Text = Calendar.TodaysDate.ToShortDateString();

        current_year = Calendar.TodaysDate.Year;
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
        this.current_year += 1;

        Calendar.VisibleDate = new DateTime(current_year, Calendar.TodaysDate.Month, Calendar.TodaysDate.Day);
    }

    protected void btnPrevYear_Click(object sender, EventArgs e)
    {
        this.current_year -= 1;

        Calendar.VisibleDate = new DateTime(current_year, Calendar.TodaysDate.Month, Calendar.TodaysDate.Day);
    }
}
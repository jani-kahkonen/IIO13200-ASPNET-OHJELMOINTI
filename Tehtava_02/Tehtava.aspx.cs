using System;

public partial class Tehtava : System.Web.UI.Page
{
	private uint row_length;
	
	private uint min_value, max_value;
	
	protected void Page_Load(object sender, EventArgs e)
	{
	
	}

    protected void btnCalculate_Click(object sender, EventArgs e)
	{
		try
		{
            lblResult.Text = String.Empty;

            uint row_count = uint.Parse(txtCount.Text);

            switch (ddlGame.SelectedIndex)
            {
                case 1:
                    row_length = 7;
                    min_value = 1;
                    max_value = 39;
                    break;
                case 2:
                    row_length = 6;
                    min_value = 1;
                    max_value = 48;
                    break;
            }

            Tehtava_02.Lotto lotto = new Tehtava_02.Lotto(row_length);

            for(uint i = 0; i < row_count; ++i)
                lblResult.Text += "<br>" + lotto.create_row(min_value, max_value);
		}
		catch (Exception ex)
		{
			lblResult.Text = ex.Message;
		}
	}
}
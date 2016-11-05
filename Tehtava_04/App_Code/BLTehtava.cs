using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for BLTehtava
/// </summary>

public class BLTehtava
{
    private static string connection_string = System.Configuration.ConfigurationManager.ConnectionStrings["DemoxOy"].ConnectionString;

    public BLTehtava()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public static DataSet get_data()
    {
        using (SqlConnection connection = new SqlConnection(connection_string))
        {
            connection.Open();

            SqlDataAdapter command = new SqlDataAdapter("SELECT [astunnus], [asnimi], [yhteyshlo], [postitmp] FROM [asiakas]", connection);

            DataSet data_set = new DataSet();

            command.Fill(data_set);

            return data_set;
        }
    }
}
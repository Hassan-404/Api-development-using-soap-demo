using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Drawing;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;


/// <summary>
/// Summary description for fetchingdata
/// </summary>
[WebService(Namespace = "http://comsatsNtsdemo.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class fetchingdata : System.Web.Services.WebService {

    public fetchingdata () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    public string config()
    {
        return "Data Source=DESKTOP-73OJRK1;Initial Catalog=Candidates;User ID=myAccount; password=12345";
    }
    [WebMethod]
    public string fetchData(int id) {

        SqlConnection conn = new SqlConnection(config());

        
        SqlCommand cmd;
        SqlDataReader data_reader;
        string output = "", query;
        conn.Open();

        query = "Select * from students where id=" + id + "";

        //'"+id+"' used to pass argument in the in the string 
        // sql command is used to fetch data of desired selection from the table
        // SqlDataReader is used to hold the data fetched from the table


        cmd = new SqlCommand(query, conn);
        data_reader = cmd.ExecuteReader();

        while (data_reader.Read())
        {
            output = output + data_reader.GetValue(0) + "," + data_reader.GetValue(1) + "," + data_reader.GetValue(2);
        }


        if (output == "")
            return "404";
        else
        {
            data_reader.Close();
            cmd.Dispose();
            conn.Close();
            return output;
        }
    }
    
}

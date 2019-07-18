using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class demopage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Click(object sender, EventArgs e)
    {
        Mypresentation.fetchingdata myobject = new Mypresentation.fetchingdata();

        Int32 val = Convert.ToInt32(idtext.Text);

        string output = myobject.fetchData(val).ToString();

        if (output == "404")
            sid.Text = "Invalid Entry";
        else
        {

            string[] values = output.Split(',');
            for (int i = 0; i < values.Length; i++)
            {
                values[i] = values[i].Trim();
            }

            sid.Text = values[0];
            stdname.Text = values[1];
            fathername.Text = values[2];
        }
    }
    protected void idtext_TextChanged(object sender, EventArgs e)
    {

    }
}
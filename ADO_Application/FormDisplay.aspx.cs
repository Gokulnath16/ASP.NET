using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;


namespace ADO_Application
{
    public partial class FormDisplay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button_click(object sender, EventArgs e) {


            if (IsPostBack)
            {
                MySqlConnection conn1 = new MySqlConnection(conn.ConnectionString);
                Response.Write("Connected");
                Label2.Text = "Yes";
            
                try
                {
                    conn1.Open();
                    //Display Query
                    string Query = "select * from test.salesman";


                    MySqlCommand MyCmd = new MySqlCommand(Query, conn1);

                    MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
                    MyAdapter.SelectCommand = MyCmd;
                    DataSet ds = new DataSet();
                    MyAdapter.Fill(ds);
                    GridView1.DataSource = ds.Tables[0];
                    GridView1.DataBind();

                    DropDownList1.DataSource = ds.Tables[0];
                    DropDownList1.DataTextField = "salesman_id";
                    DropDownList1.DataTextField = "salesman_id";
                    DropDownList1.DataBind();

                    ListBox1.DataSource = ds.Tables[0];
                    ListBox1.DataTextField = "salesman_id";
                    ListBox1.DataTextField = "salesman_id";
                    ListBox1.DataBind();

                }
                catch (Exception ex)
                {
                    Label1.Text = ex.ToString();
                }

            }
            
        }

 
    }
}
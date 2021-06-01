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
    public partial class DropDownTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Click(object sender, EventArgs e)
        {
            MySqlConnection conn3 = new MySqlConnection(conn.ConnectionString);

            try
            {
                conn3.Open();
                string sql = "UPDATE employee.actor set " + DropDownList1.SelectedValue + " = \"yud\" where " + DropDownList1.SelectedValue + " = \"Vijay\" ";

                MySqlCommand cmd = new MySqlCommand(sql, conn3);

                int count = cmd.ExecuteNonQuery();

                if (count == 1)
                {
                    Response.Write("Success");

                }
                else {
                    Response.Write("Failed");
                }


            }
            catch (Exception ex) {
                Response.Write(ex);
            }

        }

    }
}
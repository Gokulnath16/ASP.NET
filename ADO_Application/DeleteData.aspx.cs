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
    public partial class DeleteData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnSubmit(object sender, EventArgs e) {

            if (IsPostBack) {

                MySqlConnection conn3 = new MySqlConnection(conn.ConnectionString);

                try
                {

                    conn3.Open();

                    //string DeleteQuery = "DELETE FROM employee.actor where actor_name = '"+d_name.Text+"'";
                    //MySqlCommand DeleteCmd = new MySqlCommand(DeleteQuery, conn3);
                    //int count = DeleteCmd.ExecuteNonQuery();

                    string UpdateQuery = "update employee.actor set actor_address = \"chennai\" where actor_name = '" + u_name.Text + "'";
                    MySqlCommand UpdateCmd = new MySqlCommand(UpdateQuery, conn3);
                    int count = UpdateCmd.ExecuteNonQuery();

                    if (count == 1) {

                        lbltex.Text = "Updated 1 Record name : '" + u_name.Text + "'";
                    
                    }
                    else
                    {
                        lbltex.Text = "Could not delete record";
                    }

                }

                catch (Exception ex) {
                    lbltex.Text = ex.ToString();
                }
            }
        }


    }
}
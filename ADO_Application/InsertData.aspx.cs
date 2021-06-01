using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Xml.Linq;

namespace ADO_Application
{
    public partial class InsertData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void On_Button_Click(object sender, EventArgs e) {

            if (IsPostBack) {

                MySqlConnection conn2 = new MySqlConnection(conn.ConnectionString);

                try
                {
                    conn2.Open();

                    string InsertQuery = "INSERT INTO employee.actor(actor_name, actor_address) values('" + a_name.Text + "' , '" + a_address.Text + "')";
                    string SelectQuery = "SELECT * FROM employee.actor";

                    MySqlCommand InsertCmd = new MySqlCommand(InsertQuery, conn2);
                    MySqlCommand SelectCmd = new MySqlCommand(SelectQuery, conn2);
                      

                    int count = InsertCmd.ExecuteNonQuery();
                    if (count == 1)
                    {
                        lbltex.Text = "Actor " + a_name.Text + " has added";

                        MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
                        MyAdapter.SelectCommand = SelectCmd;
                        DataSet ds = new DataSet();
                        MyAdapter.Fill(ds);
                        GridView1.DataSource = ds.Tables[0];
                        GridView1.DataBind();

                    }
                    else
                    {
                        lbltex.Text = "Could not add actor";
                    }


                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }

                finally {
                    conn2.Close();
                }
            }

        }

    }
}
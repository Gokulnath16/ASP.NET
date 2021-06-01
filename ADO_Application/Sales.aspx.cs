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
    public partial class Sales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OnSubmit(object sender, EventArgs e)
        {

            MySqlConnection Salesconn = new MySqlConnection(conn.ConnectionString);

            try
            {
                Salesconn.Open();

                string InsertQuery = "INSERT INTO users.salesdetail(sdate, sqty, pid) values('" + SDate.Text + "', '" + SQty.Text + "', '" + PId.Text + "')";              

                MySqlCommand InsertCmd = new MySqlCommand(InsertQuery, Salesconn);

                int count = InsertCmd.ExecuteNonQuery();

                if (count == 1)
                {
                    string SelectQuery = "SELECT QOH from users.salesMast where Pid = '" + PId.Text + "'";
                    MySqlCommand SelectCmd = new MySqlCommand(SelectQuery, Salesconn);
                    MySqlDataReader dr = SelectCmd.ExecuteReader();

                    while (dr.Read()) {
                        string QOH = dr[0].ToString();
                        int qty =  Convert.ToInt32(QOH) - Convert.ToInt32(SQty.Text);
                        //Response.Write(qty);

                        dr.Close();

                        string UpdateQuery = "UPDATE users.salesMast set QOH = " + qty + " where pid = '" + PId.Text + "'";
                        MySqlCommand UpdateCmd = new MySqlCommand(UpdateQuery, Salesconn);

                        int Count = UpdateCmd.ExecuteNonQuery();
                        if (Count == 1)
                        {
                            Response.Write("Update Success");
                            string SelectTableQuery = "SELECT * FROM users.salesMast";
                            MySqlCommand SelectTableCmd = new MySqlCommand(SelectTableQuery, Salesconn);

                            MySqlDataAdapter MyAdapter = new MySqlDataAdapter();
                            MyAdapter.SelectCommand = SelectTableCmd;
                            DataSet ds = new DataSet();
                            MyAdapter.Fill(ds);
                            GridView1.DataSource = ds.Tables[0];
                            GridView1.DataBind();

                            break;
                        }
                        else
                        {
                            Response.Write("Update Failed");
                        }

                    }




                }
            }
            catch (Exception ex) {
                Response.Write(ex.ToString());
            }


        }

    }
}
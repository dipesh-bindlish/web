using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EHospital
{
    public partial class datapage : System.Web.UI.Page
    {
        SqlConnection con3 = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\appoint.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FetchDataFromDatabase();
            }
        }

        private void FetchDataFromDatabase()
        {
            string query = "SELECT * FROM Table"; // Replace YourTable with your actual table name

            using (SqlCommand cmd = new SqlCommand(query, con3))
            {
                con3.Open();
                using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                {
                    DataTable dataTable = new DataTable();
                    

                    if (dataTable.Rows.Count > 0)
                    {
                        GridView1.DataSource = dataTable;
                        GridView1.DataBind();
                    }
                }
            }
        }

        // Add the event handler method for the GridView's SelectedIndexChanged event if needed
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Handle the selected index change event here
        }
    }
}

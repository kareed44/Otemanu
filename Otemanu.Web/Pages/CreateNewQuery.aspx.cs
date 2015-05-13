using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Otemanu
{
    public partial class CreateNewQuery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void CreateNewQueryButton_Click(object sender, EventArgs e)
        {
            string newQueryName = QueryNameTextBox.Text;
            string newQueryDescription = QueryDescriptionTextBox.Text;
            string newQueryType = QueryTypeDropDownList.SelectedValue;            
            string newQueryLabel = QueryLabelTextBox.Text;

            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                SqlCommand comm = new SqlCommand("pr_SaveQuery", conn);

                comm.CommandType = CommandType.StoredProcedure;
                comm.Parameters.AddWithValue("@Name", newQueryName);
                comm.Parameters.AddWithValue("@Description", string.Empty);
                comm.Parameters.AddWithValue("@Type", newQueryType);
                comm.Parameters.AddWithValue("@Label", newQueryLabel);

                conn.Open();

                int returnValue = (int)comm.ExecuteScalar();

                if (returnValue == 1)
                {
                }

                if (returnValue == 2)
                {
                }

                conn.Close();
            }

            Response.Redirect("~/Pages/QueryDictionary.aspx");
        }
    }
}
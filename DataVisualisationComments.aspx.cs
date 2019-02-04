using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalProject
{
    public partial class data_visualisation : System.Web.UI.Page
    {
        public string queryResult;

        protected void Page_Load(object sender, EventArgs e)
        {
            queryResult = ConvertDataTabletoString();
        }

        public string ConvertDataTabletoString()
        {
            DataTable dt = new DataTable();
            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["dbam17ahnConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);
            conn.Open();

            SqlCommand cmd = new SqlCommand("select pro.ProductName, ISNULL(COUNT(com.ProductId),0) CommentCount from Comments com LEFT OUTER JOIN Product pro ON pro.ID = com.ProductId GROUP BY pro.ProductName", conn);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            List<Dictionary<string, object>> rows = new List<Dictionary<string, object>>();
            Dictionary<string, object> row;
            foreach (DataRow dr in dt.Rows)
            {
                row = new Dictionary<string, object>();
                foreach (DataColumn col in dt.Columns)
                {
                    row.Add(col.ColumnName, dr[col]);
                }
                rows.Add(row);
            }
            return serializer.Serialize(rows);
        }
    }
}
using System;
using System.Text;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Xml;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace FinalProject
{
    public partial class rss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["dbam17ahnConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);


            SqlCommand rssQueryData = new SqlCommand("Select pro.ProductName, descr.Description FROM  Product pro LEFT JOIN Description descr ON pro.DescId = descr.Id ORDER BY pro.Id DESC", conn);

            conn.Open();

            rptRSS.DataSource = rssQueryData.ExecuteReader(CommandBehavior.CloseConnection);

            rptRSS.DataBind();

            conn.Close();

        }

        protected string FormatForXML(object input)
        {
            string data = input.ToString();

            data = data.Replace("&", "&amp;");
            data = data.Replace("’", "&apos;");
            data = data.Replace("<", "&lt;");
            data = data.Replace(">", "&gt;");

            return data;

        }
    }
}
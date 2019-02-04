using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using Microsoft.AspNet.Identity;

namespace FinalProject
{
    public partial class Detail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!User.Identity.IsAuthenticated) jsRater.Visible = false;
        }

        protected void btnAddNewTags_Click(object sender, EventArgs e)
        {
            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["dbam17ahnConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);
            conn.Open();

            if (TbTags.Text == "") return;

            string[] newTags = TbTags.Text.Split(',');

            foreach (string Tag in newTags)
            {
                string addTagSql = "INSERT INTO Tags(Tag) VALUES (@Tag)";
                SqlCommand sqlcmd = new SqlCommand(addTagSql, conn);
                sqlcmd.Parameters.AddWithValue("@Tag", Tag);
                sqlcmd.ExecuteNonQuery();
            }

            Response.Redirect("Detail.aspx?ProductId=" + Request.QueryString["ProductId"]);

        }

        protected void btnSubmitCommentDetails_Click(object sender, EventArgs e)
        {
            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["dbam17ahnConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);
            conn.Open();

            string addComment = "insert into Comments (ProductId, FKUserName, CommentTitle, Comment, AddedDate) values(@ProductId, @FKUserName, @CommentTitle, @Comment, @AddedDate)";
            SqlCommand sqlcmdComment = new SqlCommand(addComment, conn);
            sqlcmdComment.Parameters.AddWithValue("@ProductId", Convert.ToInt16(Request.QueryString["ProductId"]));
            sqlcmdComment.Parameters.AddWithValue("@FKUserName", User.Identity.Name);
            sqlcmdComment.Parameters.AddWithValue("@CommentTitle", TbCommentTitle.Text);
            sqlcmdComment.Parameters.AddWithValue("@Comment", TbCommentBody.Text);
            sqlcmdComment.Parameters.AddWithValue("@AddedDate", DateTime.Now);
            sqlcmdComment.ExecuteNonQuery();

            for (int ct = 0; ct < CBLExistingTags.Items.Count; ct++)
            {
                if (CBLExistingTags.Items[ct].Selected) Response.Write("-" + CBLExistingTags.Items[ct].Value);

                if (CBLExistingTags.Items[ct].Selected) ConnectTagAndProduct(Convert.ToInt16(CBLExistingTags.Items[ct].Value), Convert.ToInt16(Request.QueryString["ProductId"]), conn);
            }

            Response.Redirect("Detail.aspx?ProductId=" + Request.QueryString["ProductId"]);
        }

        protected int AddTagToDB(string Tag, SqlConnection conn)
        {
            string addTagSql = "INSERT INTO Tags(Tag) VALUE (@Tag)";
            SqlCommand sqlcmd = new SqlCommand(addTagSql, conn);
            sqlcmd.Parameters.AddWithValue("@Tag", Tag);
            sqlcmd.ExecuteNonQuery();
            string lastTagAddedSql = "SELECT TOP 1 Id FROM Tags ORDER BY Id DESC";
            SqlCommand sqlcmd2 = new SqlCommand(lastTagAddedSql, conn);
            SqlDataReader sqlDr = sqlcmd.ExecuteReader();
            sqlDr.Read();
            int retVal = Convert.ToInt16(sqlDr["Id"]);
            sqlDr.Close();
            return retVal;

        }

        protected void ConnectTagAndProduct(int TagId, int ProductId, SqlConnection conn)
        {
            string addTagAndProduct = "INSERT INTO TagsJunction(FK_TagId,FK_ProductId) VALUES (@FK_TagId,@FK_ProductId)";
            SqlCommand sqlcmd = new SqlCommand(addTagAndProduct, conn);
            sqlcmd.Parameters.AddWithValue("@FK_TagId", TagId);
            sqlcmd.Parameters.AddWithValue("@FK_ProductId", ProductId);
            sqlcmd.ExecuteNonQuery();
        }

        protected int GetIdForTag(string Tag, SqlConnection conn)
        {
            int retVal = -1;
            string findTagSql = "SELECT Id FROM Tags WHERE Tag=@Tag";
            SqlCommand sqlCmd = new SqlCommand(findTagSql, conn);
            sqlCmd.Parameters.AddWithValue("@Tag", Tag);
            SqlDataReader sqlDr = sqlCmd.ExecuteReader();
            if (sqlDr.HasRows)
            {
                sqlDr.Read();
                retVal = Convert.ToInt16(sqlDr["Id"]);
            }
            sqlDr.Close();
            return retVal;
        }
    }
}
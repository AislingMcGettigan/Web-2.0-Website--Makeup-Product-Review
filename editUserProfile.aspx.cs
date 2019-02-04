using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FinalProject
{
    public partial class editUserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) return;
            string Sql = "SELECT Picture, Location, Description, SkinType, Age, FavouriteBrand from UserProfiles WHERE fkUserName=@fkUserName";

            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["dbam17ahnConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);

            SqlCommand sqlCmd = new SqlCommand(Sql, conn);
            conn.Open();
            sqlCmd.Parameters.AddWithValue("@fkUserName", User.Identity.Name);
            SqlDataReader sqlDr = sqlCmd.ExecuteReader();
            sqlDr.Read();
            tbLocation.Text = sqlDr["Location"].ToString();
            tbDescription.Text = sqlDr["Description"].ToString(); ;
            tbAge.Text = sqlDr["Age"].ToString(); ;
            tbSkinType.Text = sqlDr["SkinType"].ToString(); ;
            tbFavouriteBrand.Text = sqlDr["FavouriteBrand"].ToString(); ;
        }

        protected void BtnProfile_Click(object sender, EventArgs e)
        {

                string existingFileName = FUPProfilePicture.FileName;

                string FilesFolder = Server.MapPath("~/Files");

                if (FUPProfilePicture.HasFile)
                {
                    FUPProfilePicture.SaveAs(FilesFolder + "/" + existingFileName);
                }

            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["dbam17ahnConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);
            SqlCommand insert;
            if (FUPProfilePicture.HasFile)
            {
                insert = new SqlCommand("UPDATE UserProfiles SET Picture=@Picture, Location=@Location, Description=@Description, Age=@Age, SkinType=@SkinType WHERE fkUserName=@fkUserName", conn);
                insert.Parameters.AddWithValue("@Picture", FUPProfilePicture.FileName);
            }

            else
            {
                 insert = new SqlCommand("UPDATE UserProfiles SET Location=@Location, Description=@Description, Age=@Age, SkinType=@SkinType WHERE fkUserName=@fkUserName", conn);
            }

            insert.Parameters.AddWithValue("@Description", tbDescription.Text);
            insert.Parameters.AddWithValue("@Location", tbLocation.Text);
            insert.Parameters.AddWithValue("@Age", tbAge.Text);
            insert.Parameters.AddWithValue("@SkinType", tbSkinType.Text);
            insert.Parameters.AddWithValue("@fkUserName", User.Identity.Name);


            try
            {
                conn.Open();
                insert.ExecuteNonQuery();
                conn.Close();
            }

            catch( Exception ex)
            { 
                Label1.Text ="Error: " + ex.Message;
            }

        }
    }
}
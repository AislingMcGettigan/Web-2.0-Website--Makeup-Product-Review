using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using System.Data.SqlClient;

namespace FinalProject
{
    public partial class Rating1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int rating = Convert.ToInt16(Request.Params["Rating"]);
            int beingRated = Convert.ToInt16(Request.Params["BeingRated"]);
            string id = User.Identity.GetUserId();


            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["dbam17ahnConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);
            SqlCommand delete = new SqlCommand("DELETE FROM Rating WHERE UserFKId = @UserFKId AND ProductFKId = @beingRated", conn);

            conn.Open();

            delete.Parameters.AddWithValue("@UserFKId", id);
            delete.Parameters.AddWithValue("@beingRated", beingRated);
            delete.ExecuteNonQuery();

            SqlCommand insertcmnd = new SqlCommand("INSERT INTO Rating(UserFKId, rating, ProductFKId, AddedDate) VALUES (@UserFKId, @rating, @ProductFKId, @AddedDate)", conn);


            insertcmnd.Parameters.AddWithValue("@UserFKId", id);
            insertcmnd.Parameters.AddWithValue("@rating", rating);
            insertcmnd.Parameters.AddWithValue("@ProductFKId", beingRated);
            insertcmnd.Parameters.AddWithValue("@AddedDate", DateTime.Now);
            insertcmnd.ExecuteNonQuery();

            conn.Close();
        }
    }
}
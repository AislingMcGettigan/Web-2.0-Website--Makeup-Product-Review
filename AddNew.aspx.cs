using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace FinalProject
{
    public partial class AddNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

      protected void AddBrand(object sender, EventArgs e)
      {
    string Brand = txtAddBrand.Text.Trim();
    if (!string.IsNullOrEmpty(Brand))
            {
                DDLBrandName.Items.Add(new ListItem(Brand, Brand));
            }
      }

        protected void AddProductType(object sender, EventArgs e)
        {
            string ProductType = txtAddProductType.Text.Trim();
            if (!string.IsNullOrEmpty(ProductType))
            {
                DDLProductType.Items.Add(new ListItem(ProductType, ProductType));
            }
        }




        protected void Button1_Click(object sender, EventArgs e)
        {
            string Connstr = System.Configuration.ConfigurationManager.ConnectionStrings["dbam17ahnConnectionString"].ConnectionString;

            SqlConnection conn = new SqlConnection(Connstr);

            try
            {
                string existingFileName = FUPImage.FileName;

                string FilesFolder = Server.MapPath("~/Files");

                if (FUPImage.HasFile)
                {
                    FUPImage.SaveAs(FilesFolder + "/" + existingFileName);
                }


                SqlCommand addDescription = new SqlCommand("insert into Description (Description) values(@Description)", conn);
                addDescription.Parameters.AddWithValue("@Description", TbDescription.Text);

                SqlCommand descriptionId = new SqlCommand("Select Top 1 Id from Description order by Id desc", conn);

                conn.Open();
                addDescription.ExecuteNonQuery();
                descriptionId.ExecuteNonQuery();

                object newDescriptionId = descriptionId.ExecuteScalar();


                SqlCommand addImage = new SqlCommand("insert into Image (ImagePath) values(@ImagePath)", conn);
                addImage.Parameters.AddWithValue("@ImagePath", "~/Files/" + FUPImage.FileName);

                SqlCommand ImagePathId = new SqlCommand("Select Top 1 Id from Image order by Id desc", conn);

                addImage.ExecuteNonQuery();
                ImagePathId.ExecuteNonQuery();

                object newImagePathId = ImagePathId.ExecuteScalar();




                SqlCommand insertProduct = new SqlCommand("insert into Product (ProductName, BrandId, DescId, ProductTypeId, RatingId, Ingredients, ImageId, AddedDate) values(@ProductName, @BrandId, @DescId, @ProductTypeId, @RatingId, @Ingredients, @ImageId, @AddedDate)", conn);
                insertProduct.Parameters.AddWithValue("@BrandId", DDLBrandName.Text);
                insertProduct.Parameters.AddWithValue("@ProductName", TbProductName.Text);
                insertProduct.Parameters.AddWithValue("@DescId", newDescriptionId);
                insertProduct.Parameters.AddWithValue("@ProductTypeId", DDLProductType.Text);
                insertProduct.Parameters.AddWithValue("@RatingId", DDLRating.Text);
                insertProduct.Parameters.AddWithValue("@Ingredients", TbIngredients.Text);
                insertProduct.Parameters.AddWithValue("@ImageId", newImagePathId);
                insertProduct.Parameters.AddWithValue("@AddedDate", DateTime.Now);

                insertProduct.ExecuteNonQuery();
                Lbl1.Text = "Review Submitted Successfully!";
            }
            catch (Exception ex)
            {
                Lbl1.Text = "Error: " + ex.Message;
                conn.Close();
            }
        }
    }
}
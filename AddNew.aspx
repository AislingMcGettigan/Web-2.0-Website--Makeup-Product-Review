<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddNew.aspx.cs" Inherits="FinalProject.AddNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;
    </p>
    <p>

        <b><i><span style="font-size: x-large">Add New Review</span></i></b></p>
         
        <div class="container"  style="width: 38%; float: right;">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner" style="left: 4px; top: 5px; width: 100%">
                <div class="item active">
                    <img src="Files\678df95605f933ae34de6ef90789bd4a.jpg" alt="Colour Insense" style="width: 100%; height: 400px">
                </div>

                <div class="item">
                    <img src="Files\category_makeup_840x400-9wmww.jpg" alt="Cmakeup" style="width: 100%; height: 400px">
                </div>
    
                <div class="item">
                    <img src="Files\5081179.jpg" alt="Foundation" style="width: 100%; height: 400px">
                </div>
            </div>

            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
            
        <b>Brand Name:</b>
    <br />
   
        <asp:DropDownList ID="DDLBrandName" runat="server" DataSourceID="SqlDataSource1" DataTextField="BrandName" DataValueField="Id" Height="27px" Width="365px">
        </asp:DropDownList> 

       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbam17ahnConnectionString %>" SelectCommand="SELECT [BrandName], [Id] FROM [BrandTable]"></asp:SqlDataSource>

    <p style="font-size: x-small">
        <em>If you can not find your Brand Name, Please add it using the box below!</em></p>
    <p>


     <asp:TextBox ID="txtAddBrand" runat="server" Width="195px" Height="27px" />

&nbsp;<asp:Button ID="btnAdd" runat="server" Text="AddBrand" OnClick="AddBrand" BackColor="#CC99FF" Font-Bold="True" Font-Size="Small" Height="28px" style="margin-top: 0" Width="153px" />

    </p>
    <p>
      <b>Product Name:&nbsp; </b>
    </p>
    <p>
      <asp:TextBox ID="TbProductName" runat="server" Height="27px" Width="365px"></asp:TextBox>
    </p>


       <b>Product Type:</b> <br />
<asp:DropDownList ID="DDLProductType" runat="server" DataSourceID="SqlDataSource2" DataTextField="ProductType" DataValueField="Id" Height="27px" Width="365px">
        </asp:DropDownList>

    <p style="font-size: x-small">
        <em>If you can not find your Brand Name, Please add it using the box below!</em></p>
    <p>
        <em><asp:TextBox ID="txtAddProductType" runat="server" Width="195px" Height="27px" />

&nbsp;

      <asp:Button ID="btnAddPT" runat="server" Text="AddProductType" OnClick="AddProductType" BackColor="#CC99FF" Font-Bold="True" Width="153px" Height="27px" />
        </em>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbam17ahnConnectionString %>" SelectCommand="SELECT [ProductType], [Id] FROM [ProductType]"></asp:SqlDataSource>
    </p>
    <p>
       <b>Description:</b>&nbsp;&nbsp;&nbsp;</p>
    <p>
       &nbsp;<asp:TextBox ID="TbDescription" runat="server" Height="67px" TextMode="MultiLine" Width="365px"></asp:TextBox>
    </p>
    <p>
        <b>Ingredients:</b>&nbsp;</p>
    <p>
        <asp:TextBox ID="TbIngredients" runat="server" Height="67px" TextMode="MultiLine" Width="365px"></asp:TextBox>
    </p>
    <p>
     <b>Upload Image:</b>
        <asp:FileUpload ID="FUPImage" runat="server" Width="365px" BackColor="White" Height="27px" />
    </p>
    <p>
       <b>Rating:</b>
        <asp:DropDownList ID="DDLRating" runat="server" DataTextField="Rating" DataValueField="Id" Height="27px" style="margin-left: 12px" Width="277px">
            <asp:ListItem Value="1"> 1 </asp:ListItem>
            <asp:ListItem Value="2"> 2 </asp:ListItem>
            <asp:ListItem Value="3"> 3 </asp:ListItem>
            <asp:ListItem Value="4"> 4 </asp:ListItem>
            <asp:ListItem Value="5"> 5 </asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button1" runat="server" Text="Submit Review" OnClick="Button1_Click" BackColor="#CC99FF" Font-Bold="True" Font-Size="Medium" Height="32px" Width="192px" />
    </p>
    <p>
        <asp:Label ID="Lbl1" runat="server"></asp:Label>
    </p>
 
      
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

    <p>

        &nbsp;<p>

        &nbsp;<p>

        &nbsp;<p>

        &nbsp;<p>

        &nbsp;<p>

        &nbsp;
            
            </asp:Content>

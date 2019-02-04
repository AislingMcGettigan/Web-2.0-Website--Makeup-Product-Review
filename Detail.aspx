<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detail.aspx.cs" Inherits="FinalProject.Detail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p style="font-size: x-large"><strong>Product Review</strong></p>

    <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <td runat="server" style="">
              <b>Product Name:</b>
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black"  />
            </a>
                  <br />
             <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                 <asp:Image ID="Image2" runat="server" ImageUrl='<%# String.Concat("~", Eval("ImagePath")) %>' Height="250" Width="250"   ImageAlign="Right" />
             </a>
                <br />
                  <br />
                <b>Product Type:</b>
                <asp:Label ID="ProductTypeLabel" runat="server" Text='<%# Eval("ProductType") %>' />
                <br />
                  <br />
                <b>Brand Name:</b>
                <asp:Label ID="BrandNameLabel" runat="server" Text='<%# Eval("BrandName") %>' />
                <br />
                  <br />
                <b>Rating:</b>
                <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                <br />
                  <br />
                <b>Description:</b>
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                  <br />
                <b>Ingredients:</b>
                <asp:Label ID="IngredientsLabel" runat="server" Text='<%# Eval("Ingredients") %>' />
                <br />
            </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <td runat="server" style="">
                <b>Product Name:</b>
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black"  />
            </a>
             <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                <asp:Image id="Image2" runat="server" ImageUrl='<%# String.Concat("~", Eval("ImagePath")) %>' Height="250" Width="250"   ImageAlign="Right" />
             </a>
                <br />
                  <br />
                <b>Product Type:</b>
                <asp:TextBox ID="ProductTypeTextBox" runat="server" Text='<%# Eval("ProductType") %>' />
                <br />
                  <br />
                <b>Brand Name:</b>
                <asp:TextBox ID="BrandNameTextBox" runat="server" Text='<%# Eval("BrandName") %>' />
                <br />
                  <br />
                <b>Rating:</b>
                <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Eval("Rating") %>' />
                <br />
                  <br />
                <b>Description:</b>
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                  <br />
                <b>Ingredients:</b>
                <asp:TextBox ID="IngredientsTextBox" runat="server" Text='<%# Eval("Ingredients") %>' />
                <br />
                  <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <td runat="server" style="">
                <b>Product Name:</b>
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black"  />
            </a>
             <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                <asp:Image id="Image2" runat="server" ImageUrl='<%# String.Concat("~", Eval("ImagePath")) %>' Height="250" Width="250"   ImageAlign="Right" />
             </a>
                <br />
                  <br />
                <b>Product Type:</b>
                <asp:TextBox ID="ProductTypeTextBox" runat="server" Text='<%# Eval("ProductType") %>' />
                <br />
                  <br />
                <b>Brand Name:</b>
                <asp:TextBox ID="BrandNameTextBox" runat="server" Text='<%# Eval("BrandName") %>' />
                <br />
                  <br />
                <b>Rating:</b>
                <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Eval("Rating") %>' />
                <br />
                  <br />
                <b>Description:</b>
                <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                  <br />
                <b>Ingredients:</b>
                <asp:TextBox ID="IngredientsTextBox" runat="server" Text='<%# Eval("Ingredients") %>' />
                <br />
                  <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
            </td>
        </InsertItemTemplate>
        <ItemTemplate>
            <td runat="server" style="">
                <b>Product Name:</b>
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black"  />
            </a>
             <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                <asp:Image id="Image2" runat="server" ImageUrl='<%# String.Concat("~", Eval("ImagePath")) %>' Height="250" Width="250"   ImageAlign="Right" />
             </a>
                <br />
                  <br />
                <b>Product Type:</b>
                <asp:Label ID="ProductTypeLabel" runat="server" Text='<%# Eval("ProductType") %>' />
                <br />
                  <br />
                <b>BrandName:</b>
                <asp:Label ID="BrandNameLabel" runat="server" Text='<%# Eval("BrandName") %>' />
                <br />
                  <br />
                <b>Rating:</b>
                <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                <br />
                  <br />
                <b>Description:</b>
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                  <br />
                <b>Ingredients:</b>
                <asp:Label ID="IngredientsLabel" runat="server" Text='<%# Eval("Ingredients") %>' />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" border="0" style="">
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <td runat="server" style="">
                <b>Product Name:</b>
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black"  />
                 </a>
                <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                <asp:Image id="Image2" runat="server" ImageUrl='<%# String.Concat("~", Eval("ImagePath")) %>' Height="250" Width="250"   ImageAlign="Right" />
             </a>
                <br />
                  <br />
                <b>Product Type:</b>
                <asp:Label ID="ProductTypeLabel" runat="server" Text='<%# Eval("ProductType") %>' />
                <br />
                  <br />
                <b>Brand Name:</b>
                <asp:Label ID="BrandNameLabel" runat="server" Text='<%# Eval("BrandName") %>' />
                <br />
                  <br />
                <b>Rating:</b>
                <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                <br />
                  <br />
                <b>Description:</b>
                <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                <br />
                                <b>Ingredients:</b>
                <asp:Label ID="IngredientsLabel" runat="server" Text='<%# Eval("Ingredients") %>' />
                <br />
            </td>
        </SelectedItemTemplate>
    </asp:ListView>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbam17ahnConnectionString %>" SelectCommand="SELECT pr.Id, pr.ProductName, img.ImagePath, prt.ProductType, brn.BrandName, rtg.Rating, descr.Description, pr.Ingredients FROM Product AS pr LEFT OUTER JOIN Image AS img ON pr.ImageId = img.Id LEFT OUTER JOIN ProductType AS prt ON pr.ProductTypeId = prt.Id LEFT OUTER JOIN BrandTable AS brn ON pr.BrandId = brn.Id LEFT OUTER JOIN Rating AS rtg ON pr.RatingId = rtg.Id LEFT OUTER JOIN Description AS descr ON pr.DescId = descr.Id WHERE (pr.Id = @ProductId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </p>
    

        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:dbam17ahnConnectionString %>" SelectCommand="SELECT (SELECT TOP 1 rat.Rating FROM [Rating] rat WHERE rat.UserFKId = anu.ID ORDER BY rat.AddedDate DESC) Rating, com.[FKUserName], com.[CommentTitle], com.[Comment], com.[AddedDate], com.[FKRating] FROM [Comments] com LEFT JOIN [AspNetUsers] anu ON anu.[UserName] = com.[FKUserName] WHERE (com.[ProductID] = @ProductId)">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductId" QueryStringField="ProductId" />
            </SelectParameters>
        </asp:SqlDataSource>
   

        <h2 style="font-size: x-large"><strong>Discussion</strong></h2>
    <p>&nbsp;</p>
    <asp:LoginView ID="LoginView1" runat="server">
        <AnonymousTemplate>You Must Log In To See Discussion</AnonymousTemplate>
        <LoggedInTemplate>
            <div style="border-style:solid; border-width:thick; border-color: #cbc0d2; background-color: beige">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource3">
                    <ItemTemplate>
                        <div class="row">
                            <div class="col-md-12"><b>User Name: </b> <%#Eval("FKUserName")%></div>
                        </div>

                         <div class="row">
                            <div class="col-md-10"><b>Comment Title:</b> <%#Eval("CommentTitle")%></div>
                            <div class="col-md-2"><%#Eval("AddedDate")%></div>
                        </div>

                        <div class="row">
                            <div class="col-md-11"><%#Eval("Comment")%></div>
                            <div class="col-md-1"> &nbsp;</div>
                        </div>

                        <div class="row">
                            <div class="col-md-11"><b>Rating:  </b><%#Eval("Rating")%></div>
                            <div class="col-md-1"> &nbsp;</div>
                        </div>
                    <br />
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </LoggedInTemplate>
     </asp:LoginView>

    <div ID="jsRater" runat="server">  
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>
            <asp:PlaceHolder runat="server">
                <input id="mainRater" type="number" class="rating" data-min=0 data-max=5 data-step= 1.0 data-size="lg" >
            </asp:PlaceHolder>
        </p>
        <p><span style="font-size: large"><strong>Add Tags to Your Post:</strong></span>
            <asp:TextBox ID="TbTags" runat="server" Width="586px"></asp:TextBox>
                &nbsp;
            <asp:Button ID="btnAddNewTags" runat="server" BackColor="#CC99FF" BorderColor="#CCCCCC" Font-Bold="True" Font-Size="Medium" Height="24px" OnClick="btnAddNewTags_Click" Text="Add New Tags" Width="152px" />
        </p>
        <p style="font-size: medium"><em>(Remember to seperate your tags using commas!)</em></p>
        <p style="font-size: medium">&nbsp;</p>
        <p style="font-size: medium"><strong><span style="font-size: large">Existing Tags:</span></strong>
          
            <asp:CheckBoxList ID="CBLExistingTags" runat="server" DataSourceID="SqlDataSource2" DataTextField="Tag" DataValueField="Id" RepeatColumns="8" RepeatDirection="Horizontal">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbam17ahnConnectionString %>" SelectCommand="SELECT DISTINCT [Id], [Tag] FROM [Tags]"></asp:SqlDataSource>
        </p>
        <p>&nbsp;</p>
        <p>
            <span style="font-size: large"><strong>Title:&nbsp;&nbsp;</strong><em>&nbsp;</em><strong>&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TbCommentTitle" runat="server" Width="604px"></asp:TextBox>
        </p>
        <p>
            <span style="font-size: large"><strong>Body:</strong><em>&nbsp;</em><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TbCommentBody" runat="server" TextMode="MultiLine" Width="604px" Height="130px"></asp:TextBox>
        </p>
        <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="btnSubmitCommentDetails" runat="server" BackColor="#CC99FF" Font-Bold="True" Font-Size="Medium" OnClick="btnSubmitCommentDetails_Click" Text="Add Comment" />
        </p>
        <p>
            <asp:Label ID="LblComment" runat="server"></asp:Label>
        </p>
        <p>
        </p>
        <p>
        </p>

    </div>

    <script>
        jQuery(document).ready(function () {
            $('#mainRater').rating();
        });

        $('#mainRater').on('rating:change', function (event, value, caption) {
            var proId = getUrlVars()["ProductId"];
            var rate = $('#mainRater').val();
            $.get("Rating.aspx",{
                BeingRated: proId,
                Rating: rate
            });
        });

        function getUrlVars() {
            var vars = [], hash;
            var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
            for (var i = 0; i < hashes.length; i++) {
                hash = hashes[i].split('=');
                vars.push(hash[0]);
                vars[hash[0]] = hash[1];
            }
            return vars;
        };
    </script>
</asp:Content>

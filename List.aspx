<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="FinalProject.List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .center {
            margin: auto;
            width: 100%;
            background-color: #d5b3a2;
            padding: 10px;
            text-align: center;
        }

        .centerDD {
            margin: auto;
            text-align: center;
        }

        .previous {
            background-color: #f1f1f1;
            color: black;
        }

        .next {
            background-color: #023a60;
            color: white;
        }

        .itemCSS {
            width: 202px; 
            background-color: white;
            border: solid thick #fee1d2;
        }
    </style>

        <div class="center">
          <p>
                <span style="font-size: x-large"><strong><em>Product Reviews </em></strong></span>
          </p>
            <b>Brand Filter:</b>
            <asp:DropDownList ID="ddlBrand" runat="server" CssClass="form-control centerDD" Width="30%" AutoPostBack="true" DataSourceID="SqlDataSource2" DataTextField="BrandName" DataValueField="BrandName" AppendDataBoundItems="true">
                <asp:ListItem Text="Select a brand" Value="" />
            </asp:DropDownList>
        </div>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbam17ahnConnectionString %>" SelectCommand="SELECT [Id], [BrandName] FROM [BrandTable]"></asp:SqlDataSource>


    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id"  GroupItemCount="5">
        
        <AlternatingItemTemplate>
                <td runat="server" class="itemCSS">
                    <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                        <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black" Height="40" Font-Underline="True" Font-Size="Large" Font-Italic="True" Font-Bold="True" />
                    </a>
                    <br />
                     <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                        <asp:Image id="Image2" runat="server" ImageUrl='<%# String.Concat("~", Eval("ImagePath"))%>' height="150" width="150" />
                     </a>
                    <br />
                   <b>Product Type:</b>
                         <asp:Label ID="ProductTypeLabel" runat="server" Text='<%# Eval("ProductType") %>' />
                    <br />
                  <b> Brand: </b>
                         <asp:Label ID="BrandNameLabel" runat="server" Text='<%# Eval("BrandName") %>' />
                    <br />
                    <b> Average Rating:</b>
                    <asp:Label ID="AverageRatingLabel" runat="server" Text='<%# Eval("AverageRating") %>' />
                    <br />
                    <br />
                </td>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            
            <td runat="server" class="itemCSS" >
                <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black" Height="40"  Font-Underline="True" Font-Size="Large" Font-Bold="True" Font-Italic="True" />
                </a>
                <br />
                 <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                    <asp:Image id="Image2" runat="server"  ImageUrl='<%# String.Concat("~", Eval("ImagePath"))%>' height="150" width="150" />
                 </a>
                <br />
              <b> Product Type: </b>
                <asp:TextBox ID="ProductTypeTextBox" runat="server" Text='<%#Eval("ProductType") %>' />
                <br />
               <b> Brand: </b>
                <asp:TextBox ID="BrandNameTextBox" runat="server" Text='<%# Eval("BrandName") %>' />
                <br />
                <b> Average Rating:</b>
                <asp:TextBox ID="AverageRatingTextBox" runat="server" Text='<%# Eval("AverageRating") %>' />
                <br />
                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                <br />
            </td>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <EmptyItemTemplate>
            <td runat="server" />
        </EmptyItemTemplate>
        <GroupTemplate>
            <tr id="itemPlaceholderContainer" runat="server">
                <td id="itemPlaceholder" runat="server"></td>
            </tr>
        </GroupTemplate>
        <InsertItemTemplate>
            <td runat="server" class="itemCSS">
                <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                    <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black" Height="40" Font-Underline="True" Font-Size="Large" Font-Bold="True" Font-Italic="True" />
                </a>
                <br />
                 <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                    <asp:Image id="Image2" runat="server"  ImageUrl='<%# String.Concat("~", Eval("ImagePath"))%>' height="150" width="150" />
                 </a>
                <br />
                <b> Product Type: </b>
                <asp:TextBox ID="ProductTypeTextBox" runat="server" Text='<%# Eval ("ProductType") %>' />
                <br />
                <b> Brand: </b>
                <asp:TextBox ID="BrandNameTextBox" runat="server" Text='<%# Eval("BrandName") %>' />
                <br />
                <b> Average Rating:</b>
                <asp:TextBox ID="AverageRatingTextBox" runat="server" Text='<%# Eval("AverageRating") %>' />
                <br />
                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                <br />
                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                <br />
            </td>
        </InsertItemTemplate>

        <ItemTemplate>
            <td runat="server" class="itemCSS">
                <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black" Height="40"  Font-Underline="True" Font-Size="Large" Font-Bold="True" Font-Italic="True" />
            </a>
            <br />
             <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                <asp:Image id="Image2" runat="server"  ImageUrl='<%# String.Concat("~", Eval("ImagePath"))%>' height="150" width="150" />
             </a>
            <br />
               <b> Product Type: </b>
                <asp:Label ID="ProductTypeLabel" runat="server" Text='<%# Eval("ProductType") %>' />
                <br />
                <b> Brand: </b>
                <asp:Label ID="BrandNameLabel" runat="server" Text='<%# Eval("BrandName") %>' />
                <br />
                <b>Average Rating: </b>
                <asp:Label ID="AverageRatingLabel" runat="server" Text='<%# Eval("AverageRating") %>' />
                <br />
                <br />
            </td>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server" >
                <tr runat="server">
                    <td runat="server">
                        <table id="groupPlaceholderContainer" runat="server" border="0" style="">
                            <tr id="groupPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">

                        <br>

                        </br>
                        <br>
                        </br>
                        <br>
                        </br>
                        <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="previous" />
                                <asp:NumericPagerField  />
                                <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" ButtonCssClass="next" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        
        
        <SelectedItemTemplate>
                <td runat="server" class="itemCSS">
                    <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                        <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Eval("ProductName") %>' ForeColor="Black" Height="40" Font-Underline="True" Font-Size="Large" Font-Bold="True" Font-Italic="True" />
                    </a>
                    <br />
                    <a href="detail.aspx?ProductId=<%#Eval("Id")%>">
                        <asp:Image id="Image2" runat="server"  ImageUrl='<%# String.Concat("~", Eval("ImagePath"))%>' height="150" width="150" />
                    </a>
                    <br />
                    <b> Product Type: </b>
                    <asp:Label ID="ProductTypeLabel" runat="server" Text='<%# Eval("ProductType") %>' />
                    <br />
                    <b> Brand: </b>
                    <asp:Label ID="BrandNameLabel" runat="server" Text='<%# Eval("BrandName") %>' />
                    <br />
                     <b> Average Rating:</b>
                    <asp:Label ID="AverageRatingLabel" runat="server" Text='<%# Eval("AverageRating") %>' />
                    <br />
                    <br />
                </td>
        </SelectedItemTemplate>
    </asp:ListView>
    <p>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbam17ahnConnectionString %>" SelectCommand="SELECT pr.Id, pr.ProductName, img.ImagePath, prt.ProductType, brn.BrandName, AverageRating FROM ViewProductsAndRatings AS pr LEFT OUTER JOIN Image AS img ON pr.ImageId = img.Id LEFT OUTER JOIN ProductType AS prt ON pr.ProductTypeId = prt.Id LEFT OUTER JOIN BrandTable AS brn ON pr.BrandId = brn.Id" FilterExpression="BrandName = '{0}' ">

            <FilterParameters>
                <asp:ControlParameter ControlID="ddlBrand" PropertyName="SelectedValue" />
            </FilterParameters>
       </asp:SqlDataSource>


</p>
    <p>
        &nbsp;</p>

<p>
    &nbsp;</p>
<p>
</p>
<p>
</p>
</asp:Content>

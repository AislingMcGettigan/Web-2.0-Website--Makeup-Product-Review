<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="FinalProject.Erd" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


<!DOCTYPE html>

<html>

<head>
<title>What I am attempting to do </title>
</head>

<body>

    <h1><b>What I am attempting to do</b></h1>
<p>
Whilst building my website, I found that my original table design was flawed as my product table would contain near identical records when further records where added because a lot of products would have the same brand and product type with the only differentiating value being the product name. When I was researching data base design, a common theme I found was data normalisation and lookup tables. Subsequently, I adapted my database design and broke out my tables further. I used primary and foreign keys to link back to my main product table from my lookup tables which contain details such as my brand names and product types. This conforms with industry standard database design as anything that would have normally be repeated or duplicated and represented by a varchar value will now be split out into their own individual details. I also incorporated the use of a timestamp into my database design. My intention is to use this across the site for logging user login habits, product added dates and times and product filtering.
    
    <br>
The website will have Web 2.0 features. I will add social media links using icons/thumbnail images to the related social media site, so users can easily share products and theirs reviews on their personal social media accounts.
    </br>
    <br>
The website will use a filter to sort content by added date, average user review, highly rated, product type and specific brands. These options will be presented in a dropdown menu. This will help refine the content that the user is looking for. The website will also filter products by tags associated with products such as skin type and skin colour. Additionally, a search functionality will be added to the website to allow the user to search for specific products by product name.
        </br>
    <br>
Whilst researching ways to implement and apply a 5-star rating system to products and the various ways of visually representing this, I found multiple JavaScript libraries that allow me to implement this in a user-friendly manner and that would be visually appealing for the user. However, I am still weighing up which library I will use.
For my user registration, I will group my fields logically e.g. ask surname following first name. To ensure security, new registrants must create a strong password comprising of a mixture of higher and lower-case letters as well as numbers. User passwords also must meet a minimum character length which will be 7 characters long. I will also attempt to enable social logins where users can click to log in using other social media websites.
            </br>
    <br>
In the instance that a user may have forgotten their password, there will be an option to set a new password on the login page. The user will a saved security question and answer that the user must answer to successfully reset their password. This process will only be available to authenticated users. 
                </br>
    <br>
The website will use simple incentives such as profile badges with a title such as “Top Contributor” to encourage users to contribute content and become an active reviewer. The website will include an RSS Feed to allow people to subscribe to newly reviewed products. 
                    </br>
    <br>
Following my feedback from Assignment One, I am going to try to segment the site content to tailor it for specific users to personalise user experience. I will attempt to do this by applying segments such as skin tone and skin type. This will be featured on the websites home page. 
        </br>
</p>
</body>

</html>

</asp:Content>



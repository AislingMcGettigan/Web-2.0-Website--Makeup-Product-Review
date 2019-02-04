<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="FinalProject._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />

    <div class="container"  style="width: 38%; float: left;"> 
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <div class="item active">
                    <img src="Files/colourIntense.jpg" alt="Colour Insense" style="width: 100%; height: 400px">
                </div>

                <div class="item">
                    <img src="Files/original.jpg" alt="Chicago" style="width: 100%; height: 400px">
                </div>
    
                <div class="item">
                    <img src="Files/Mineral-Makeup.jpg" alt="Foundation" style="width: 100%; height: 400px">
                </div>
            </div>

            <!-- Left and right controls -->
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

    <div style="width: 62%; float: right; height: 400px;">
        <h1><b>Discover Your Natural Beauty!</b></h1> 
        <p class="lead">
            Naturally Organic is a web 2.0 site that reviews makeup products which are atleast 75% naturally derived and organic. Naturally Organic reviews products that are skin and environmentally friendly. Naturally Organic hopes to help you find makeup products that agree with your skin type,  including ultra-sensitive and acne prone skin. 
        </p>
    </div>

    <div class="col-md-6">
        <h2><b><i>Getting started</i></b></h2>
        <p>Register today to be able to view more content and be able to view and contribute to discussions about your latest purchases!</p>
        <p>
        <br/>
            <a class="btn btn-default" href="Account/Register.aspx" aria-dropeffect="execute" style="color: #000000; background-color: #CC99FF; width: 130px;"><strong>Register Now &raquo;</strong></a>
        </p>
    </div>
    <div class="col-md-6">
        <h2><b><i>Tell us what you think</i></b></h2>
        <p>
            We love hearing from you. Tell us what you think about a recent purchase. Share your thoughts with other users in our discussion section. Your feedback helps!
        </p>
        <p>
            <a class="btn btn-default" href="addNew.aspx" style="color: #000000; background-color: #CC99FF; width: 130px;"> <strong>Write a Review &raquo;</strong></a>
        </p>
    </div>
</asp:Content>

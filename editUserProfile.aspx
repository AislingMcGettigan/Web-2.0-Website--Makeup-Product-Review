<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="editUserProfile.aspx.cs" Inherits="FinalProject.editUserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <br />
        <strong><span style="font-size: x-large">Your Profile</span></strong></p>
    <p>
        <strong><span style="font-size: medium">Upload Your Profile Picture:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span> </strong>&nbsp;<asp:FileUpload ID="FUPProfilePicture" runat="server" Height="25px" Width="285px" />
    </p>
    <p class="text-left">
        <strong><span style="font-size: medium">Your Age:</span></strong><span style="font-size: medium">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbAge" runat="server" Height="25px" TextMode="Number" Width="230px"></asp:TextBox>
    </p>
    <p>
        <strong><span style="font-size: medium">Where Are You?</span> <asp:TextBox ID="tbLocation" runat="server" Height="25px" Width="230px"></asp:TextBox>
        </strong>
    </p>
    <p style="font-size: medium">
        <strong>Describe Yourself:</strong></p>
    <p>
        <asp:TextBox ID="tbDescription" runat="server" Height="79px" TextMode="MultiLine" Width="561px"></asp:TextBox>
    </p>
    <p>
        <strong><span style="font-size: medium">Skin Type:&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="tbSkinType" runat="server" Height="25px" Width="424px"></asp:TextBox>
        </strong>
    </p>
    <p>
        <strong><span style="font-size: medium">Favouite Brand: </span>&nbsp;
        <asp:TextBox ID="tbFavouriteBrand" runat="server" Height="25px" Width="424px"></asp:TextBox>
        </strong>
    </p>
    <p>
        &nbsp;</p>
    <p class="text-left">
        <asp:Button ID="BtnProfile" runat="server" BackColor="#CCCCCC" BorderColor="#FF66FF" BorderWidth="0px" Font-Bold="True" ForeColor="Black" OnClick="BtnProfile_Click" Text="Save Profile" Height="28px" style="margin-left: 0" Width="242px" />
    </p>
    <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
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
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

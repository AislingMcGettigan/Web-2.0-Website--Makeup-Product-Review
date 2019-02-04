<%@ Page Title="" Language="C#" CodeFile="rss.aspx.cs" MasterPageFile="~/Site.Master" ContentType="text/xml"  AutoEventWireup="true" CodeBehind="rss.aspx.cs" Inherits="FinalProject.rss" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Repeater id="rptRSS" runat="server">
        <HeaderTemplate>
            <rss version="2.0">
                <channel>
                    <title>(TEST)</title>
                    <description>This is a RSS Feed</description>
        </HeaderTemplate>
        <ItemTemplate>
            <item>
                <title>
                    <%#FormatForXML(DataBinder.Eval(Container.DataItem,"ProductName"))%>      
                </title>
                <description>
                    <%#FormatForXML(DataBinder.Eval(Container.DataItem, "Description"))%>
                </description>
            </item>
        </ItemTemplate>
        <FooterTemplate>
                </channel>
            </rss>
        </FooterTemplate>
    </asp:Repeater>
</asp:Content>

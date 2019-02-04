<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RSSFeedReader.aspx.cs" Inherits="FinalProject.RSSFeedReader" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:XmlDataSource
        id="DataSource"
        runat="server"
        DataFile="~/rss.aspx" />

      <asp:TreeView
        id="TreeView"
        runat="server"
        DataSourceID="DataSource">
        <DataBindings>
          <asp:TreeNodeBinding DataMember="ProductName"    TextField="#InnerText" />
          <asp:TreeNodeBinding DataMember="Description"   TextField="#InnerText" />
        </DataBindings>
      </asp:TreeView>
</asp:Content>

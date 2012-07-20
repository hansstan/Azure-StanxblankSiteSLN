<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyWebRole._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1>
                    <%: Page.Title %>.</h1>
                <h2>StanxblankSite V1.1</h2>
            </hgroup>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Trial App for writing to the filesystem</h3>
    Filename relative to wwwroot:<br />
    <asp:TextBox ID="txtFilename" runat="server" /><br />
    Enter some text here:<br />
    <asp:TextBox ID="txtInput" runat="server" TextMode="MultiLine" MaxLength="4096" Height="300px" Width="600px"/><br />
    <asp:Button ID="btnSubmit" runat="server" Text="Write to disk" OnClick="btnSubmit_Click" />
    <hr />
    <asp:Label ID="lblStatus" runat="server" />
</asp:Content>

<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YeniYetenek.aspx.cs" Inherits="CV_Entity_ASP.Net.YeniYetenek" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="margin-left:10px">YENİ YETENEK EKLEME SAYFASI</h2>
    <br />
    <%--<asp:Label ID="Label1" runat="server" Text="Yetenek Açıklama"></asp:Label>--%>
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left:10px; margin-right:10px;" CssClass="form-control" placeholder="Yeteneği Yazın"></asp:TextBox>

    <asp:Button ID="Button1" runat="server" style="margin-left:10px; margin-top:10px;" Text="Kaydet" cssClass="btn btn-info" OnClick="Button1_Click"/>

</asp:Content>

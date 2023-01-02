<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Yeteneklerim.aspx.cs" Inherits="CV_Entity_ASP.Net.Hakkimda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="table table-bordered" style="margin-left:10px; margin-top:25px">
        <tr>
            <th>ID</th>
            <th>YETENEK</th>
            <th>SİL</th>
            <th>GÜNCELLE</th>
        </tr>
        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("YETENEK") %></td>
                    <td><a href="#" class="btn btn-danger">Sil</a></td>
                    <td><a href="#" class="btn btn-success">Güncelle</a></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>

    </table>
    
        <a href="YeniYetenek.aspx" class="btn btn-primary" style="margin-left:10px"> Yeni Yetenek Ekle</a>




</asp:Content>

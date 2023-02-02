<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasM/Menu.Master" AutoEventWireup="true" CodeBehind="PerfilM.aspx.cs" Inherits="TENS_proyecto.PaginasM.PerfilM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            width: 245px;
            height: 23px;
        }
        .auto-style5 {
            text-align: center;
            width: 468px;
            height: 150px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <table align="center" class="auto-style5">
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="2"><strong>Perfil de TENS</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">Nombre:</td>
            <td class="auto-style3">
                <asp:Label ID="LbNombre" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Apellido Paterno:</td>
            <td class="auto-style3">
                <asp:Label ID="LbApellidoP" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Apellido Materno:</td>
            <td class="auto-style3">
                <asp:Label ID="LbApellidoM" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">RUT:</td>
            <td class="auto-style3">
                <asp:Label ID="LbRUT" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">Correo:</td>
            <td class="auto-style3">
                <asp:Label ID="LbCorreo" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:Button ID="Button1" runat="server" Onclick="EditContra" Text="Cambiar Contraseña" Width="248px" />
            </td>
            <td class="auto-style3">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

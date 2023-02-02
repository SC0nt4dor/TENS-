<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasM/Menu.Master" AutoEventWireup="true" CodeBehind="FichaM.aspx.cs" Inherits="TENS_proyecto.PaginasM.FichaM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            height: 23px;
        }
        .auto-style5 {
            width: 217px;
            height: 23px;
        }
        .auto-style8 {
            width: 152px;
            height: 23px;
        }
        .auto-style9 {
            width: 573px;
            height: 23px;
        }
        .auto-style11 {
            width: 21px;
            text-decoration: underline;
        }
        .auto-style12 {
            width: 191px;
            text-decoration: underline;
        }
        .auto-style13 {
            width: 77px;
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div>
       <table align="center" class="table">
        <tr>
            <td class="auto-style3" style="text-align:center" colspan="2"><strong>Ficha de paciente</strong></td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Nombre:</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbNombreEncargado" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Apellido Paterno:</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbApellidoPEncargado" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Apellido Materno:</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbApellidoMEncargado" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Fecha:</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbFecha" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
     
        <tr>
            <td class="auto-style11"><strong>Fi02:</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbFi02" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>PAM&nbsp;:</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbPAM" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Umbral:</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbUmbral" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Tiempo de lavado de cavidades</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbCavidad" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Tiempo de lavado de genitales</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbGenitales" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Tiempo de lavado de cabello </strong> </td>
            <td class="auto-style5">
                <asp:Label ID="LbCabello" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Hora baño de cama</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbCama" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11"><strong>Hora ducha</strong></td>
            <td class="auto-style5">
                <asp:Label ID="LbDucha" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
    <table class="table">
           <tr>
            <td class="auto-style12"><strong>Medicina:</strong></td>
            <td class="auto-style9">
                <asp:Label ID="LbNombreMedicina" runat="server" Text="Label"></asp:Label>
            </td>
               <td rowspan="3">
        <table class="table">
            
        <tr>
            <td class="auto-style13"><strong>Dispositivo usado:</strong></td>
            <td class="auto-style8">
                <asp:Label ID="LbNombreDispositivo" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Proposito de dispositivo:</strong></td>
            <td class="auto-style8">
                <asp:Label ID="LbProposito" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style13"><strong>Area Tratada</strong></td>
            <td class="auto-style8">
                <asp:Label ID="LbAreaTratada" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <!--<td class="auto-style6">Tipo de dispositivo:</td>
            <td class="auto-style5">
                <asp:Label ID="LbClasificacionDisp" runat="server" Text="Label"></asp:Label>
            </td>-->
        </tr>
        </table>
               </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Tipo de medicina:</strong></td>
            <td class="auto-style9">
                <asp:Label ID="LbClasificacion" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12"><strong>Cantidad administrada:</strong></td>
            <td class="auto-style9">
                <asp:Label ID="LbCantidad" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
    </table>
  </div>
</asp:Content>

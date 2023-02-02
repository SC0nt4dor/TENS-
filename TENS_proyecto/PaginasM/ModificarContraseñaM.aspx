<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasM/Menu.Master" AutoEventWireup="true" CodeBehind="ModificarContraseñaM.aspx.cs" Inherits="TENS_proyecto.PaginasM.ModificarContraseñaM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 633px;
            width: 135px;
        height: 45px;
    }
        .auto-style3 {
            margin-left: 633px;
            margin-bottom: 49px;
        height: 45px;
    }
        .auto-style4 {
            margin-left: 430px;
            margin-bottom: 49px;
        }
        .auto-style5 {
            width: 432px;
            margin-left: 544px;
            margin-bottom: 49px;
        }
        .auto-style6 {
            margin-left: 430px;
            margin-bottom: 49px;
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            width: 135px;
        }
        .auto-style8 {
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
       <div class="auto-style5">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Ingrese contraseña antigua:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtContraAntigua" textmode="Password" runat="server"></asp:TextBox>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtContraAntigua" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Ingrese nueva contraseña:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtContraNueva" textmode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContraNueva" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Confirmar Contraseña nueva:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtContraNueva2" textmode="Password" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContraNueva2" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtContraNueva2" ControlToValidate="TxtContraNueva" Display="Dynamic" ErrorMessage="Contraseñas no coinciden" ForeColor="Red"></asp:CompareValidator>
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    
           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate>
                       <asp:Button ID="Button1" runat="server" Text="Cambiar contraseña" OnClick="cambiarContra" Width="420px" CssClass="auto-style16"/>
                   </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdateProgress runat="server" ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1">
                       <ProgressTemplate><b>Contraseña modificacada,enviando a pagina de ingreso...</b></ProgressTemplate>
                    </asp:UpdateProgress>
                </td>
            </tr>
            </table>
            </div>
</asp:Content>

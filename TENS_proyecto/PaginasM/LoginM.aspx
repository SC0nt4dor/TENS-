<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasM/Menu.Master" AutoEventWireup="true" CodeBehind="LoginM.aspx.cs" Inherits="TENS_proyecto.PaginasM.LoginM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 891px;
            height: 30px;
        }
        .auto-style8 {
            margin-left: 0px;
        }
        .auto-style15 {
        height: 32px;
    }
        .auto-style17 {
            text-align: center;
            width: 889px;
            height: 30px;
        }
        .auto-style18 {
            text-align: center;
            width: 889px;
            height: 23px;
        }
        .auto-style19 {
            text-align: center;
            margin-left: 178px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">

    <h3 style="text-align:center">Ingreso de cuenta</h3>

    <table class="auto-style19">
        <tr>
            <td class="auto-style1" colspan="2">&nbsp;</td>
            <td class="auto-style1" colspan="2">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
           
            <td class="auto-style17">Correo:</td>
            
            <td class="auto-style7">
                <asp:TextBox ID="txtCorreo" runat="server" Width="400px" CssClass="auto-style8"></asp:TextBox>

            </td>
            
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCorreo" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtCorreo" Display="Dynamic" ErrorMessage="Correo no valido" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            
            <td class="auto-style18">Contraseña:</td>
            <td class="auto-style7">
                <asp:TextBox ID="txtContra" runat="server" TextMode="Password" Width="400px" CssClass="auto-style8"></asp:TextBox>
                </td>
           
            <td class="auto-style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtContra" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator></td>
           
        </tr>
        <tr>
            
            <td colspan="3" class="auto-style15">
              
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
              
                  
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Ingresar" OnClick="btnIngresar_click" Width="428px" />
                 
                    </ContentTemplate>

                </asp:UpdatePanel>
             
                   <asp:UpdateProgress ID="UpdateProgress2" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                           
                            <ProgressTemplate >
                                <b>Iniciando Sesion espere porfavor....</b>
                            </ProgressTemplate>

                        </asp:UpdateProgress>
            
            </td>
            <td class="auto-style15">
              
                &nbsp;</td>
        </tr>
    </table>

    </asp:Content>

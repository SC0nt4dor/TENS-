<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasM/Menu.Master" AutoEventWireup="true" CodeBehind="AgregarPacienteM.aspx.cs" Inherits="TENS_proyecto.PaginasM.AgregarPacienteM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            height: 23px;
            width: 950px;
        }
        .auto-style3 {
            height: 21px;
            width: 950px;
        }
        .auto-style2 {
            height: 15px;
            width: 950px;
        }
        .auto-style9 {
            width: 950px;
        }
        .auto-style10 {
            text-align: center;
            margin-left: 81px;
            width: 1270px;
        }
        .auto-style13 {
            height: 23px;
        }
        .auto-style14 {
            width: 950px;
            height: 26px;
        }
        .auto-style15 {
            height: 20px;
            width: 950px;
            margin-left: 40px;
        }
        .auto-style16 {
            margin-bottom: 0px;
        }
        .auto-style17 {
            height: 43px;
            width: 366px;
        }
        .auto-style18 {
            width: 366px;
            height: 22px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
  
        <table class="auto-style10">
            <tr>
                   <td class="auto-style14">
                    <asp:TextBox ID="txtNombre" placeholder="Ingrese nombre" runat="server" Width="935px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNombre" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:TextBox ID="txtApellidoP" placeholder="Ingrese apellido paterno" runat="server" Width="935px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtApellidoP" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style9">
                    <asp:TextBox ID="txtApellidoM" placeholder="Ingrese apellido materno" runat="server" Width="935px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtApellidoM" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style15">
                    <asp:TextBox ID="txtRut" placeholder="Ingrese rut" runat="server" Width="935px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtRut" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
               
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtRut" Display="Dynamic" ErrorMessage="RUT no valido" ForeColor="Red" ValidationExpression="^(\d{2}\.\d{3}\.\d{3}-)([a-zA-Z]{1}$|\d{1}$)"></asp:RegularExpressionValidator>
               
                </td>
            </tr>
            <tr>
                <td class="auto-style17">
                    <asp:TextBox ID="txtEnfermedad" placeholder="Ingrese enfermedad padecida por el paciente" runat="server" Width="935px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtEnfermedad" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style18">
                    <asp:TextBox ID="txtAntecedentes" placeholder="Ingrese antecedentes" runat="server" Width="935px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtAntecedentes" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="txtAlergias" placeholder="Ingrese Alergias" runat="server" Width="935px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtAlergias" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:TextBox ID="txtPeso" placeholder="Ingrese peso" runat="server" Width="935px"></asp:TextBox>

                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtPeso" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:DropDownList ID="ListaGenero" runat="server" Height="51px" Font-Bold="True" Width="149px">
                        <asp:ListItem Value="Seleccione Genero" Text="Seleccione Genero" Selected="True"></asp:ListItem>
                        <asp:ListItem Value="F" Text="Femenino"></asp:ListItem>
                        <asp:ListItem Value="M" Text="Masculino"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" Display="Dynamic" runat="server" ControlToValidate="ListaGenero" InitialValue="Seleccione Genero" ForeColor="Red" ErrorMessage="Seleccione un genero"></asp:RequiredFieldValidator>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                    
            </tr>
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                   <ContentTemplate>
                       <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="agregarPaciente" Width="420px" CssClass="auto-style16"/>
                   </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                        <ProgressTemplate> <b> agregado espere un momento....</b></ProgressTemplate>
                    </asp:UpdateProgress>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style13">
                        &nbsp;</td>
            </tr>
        </table>
    
        
   
        </asp:Content>

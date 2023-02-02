<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasM/Menu.Master" AutoEventWireup="true" CodeBehind="PrincipalM.aspx.cs" Inherits="TENS_proyecto.PaginasM.PrincipalM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 54%;
        height: 151px;
        margin-left: 236px;
        margin-top: 108px;
            margin-bottom: 0px;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style5 {
            height: 23px;
            width: 325px;
        }
        .auto-style11 {
            height: 23px;
            width: 151px;
        }
        .auto-style12 {
            height: 39px;
            width: 325px;
        }
        .auto-style13 {
            height: 39px;
            width: 151px;
        }
        .auto-style15 {
            height: 39px;
            width: 104px;
        }
        .auto-style16 {
            height: 23px;
            width: 185px;
        }
        .auto-style17 {
            height: 39px;
            width: 185px;
        }
        .auto-style18 {
            height: 39px;
            width: 164px;
        }
        .auto-style19 {
            height: 23px;
            width: 104px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
     <table class="table table-striped">
       
                <tr>
            <th class="auto-style3" colspan="4">
                 <strong>LISTADO DE PACIENTES</strong></th>
        </tr>
    
                <tr>
            <th class="auto-style5">Nombre</th>
            <th class="auto-style11">Apellido Paterno</th>
            <th class="auto-style21">Apellido Materno</th>
            <th class="auto-style23">RUT</th>
        </tr>
                
    <%foreach (var item in TENS_proyecto.Controllers.PacienteController.ListaPaciente())
        {%>
         <%if (item != null)
             { %>
        <tr>
            <td class="auto-style12">
               
                <%=item.Persona.nombre%>
            </td>
            <td class="auto-style13">
                <%=item.Persona.apellido_paterno%>
            </td>
              <td class="auto-style22">
                <%=item.Persona.apellido_materno%>
            </td>
             <td class="auto-style24">
                <%=item.Persona.RUT%>
            </td>
            <td class="auto-style18">
                <a href="PaginaPacienteM.aspx?ID=<%=item.ID_paciente%>">Seleccionar</a>
                
            </td>
        </tr>
     <%}
         }%>
        
        <tr>
            <td class="auto-style5">
                <asp:Button ID="Button3" runat="server" OnClick="Agregar_Paciente" Text="Añadir paciente" Width="332px" />
            </td>
            <td class="auto-style11"></td>
            <td class="auto-style21"></td>
        </tr>
    </table>
</asp:Content>

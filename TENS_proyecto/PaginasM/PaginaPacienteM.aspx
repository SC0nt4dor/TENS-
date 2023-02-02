<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasM/Menu.Master" AutoEventWireup="true" CodeBehind="PaginaPacienteM.aspx.cs" Inherits="TENS_proyecto.PaginasM.PaginaPacienteM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style3 {
            height: 23px;
        }
        .auto-style5 {
        height: 23px;
        width: 133px;
    }
        .auto-style8 {
            margin-top: 40px;
        }
        .auto-style9 {
            width: 1292px;
        }
        .auto-style10 {
            width: 1289px;
        }
        .auto-style11 {
            width: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
       <div style="text-align:center" class="auto-style8">
            <table align="center" class="table table-striped" >
                <tr>
                    <td class="auto-style3" colspan="2"><strong>Datos Paciente</strong></td>
                </tr>
                <tr>
                    <td class="auto-style11">Nombre:</td>
                    <td class="auto-style5">
                        <asp:Label ID="LbNombre" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Apellido Paterno:</td>
                    <td class="auto-style5">
                        <asp:Label ID="LbApellidoP" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Apellido Materno:</td>
                    <td class="auto-style5">
                        <asp:Label ID="LbApellidoM" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">RUT:</td>
                    <td class="auto-style5">
                        <asp:Label ID="LbRUT" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Genero:</td>
                    <td class="auto-style5">
                        <asp:Label ID="LbGenero" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Antecedentes:</td>
                    <td class="auto-style5">
                        <asp:Label ID="LbAntecedentes" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Enfermedad:</td>
                    <td class="auto-style5">
                        <asp:Label ID="LbEnfermedad" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Alergias:</td>
                    <td class="auto-style5">
                        <asp:Label ID="LbAlergias" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Peso:</td>
                    <td class="auto-style5">
                        <asp:Label ID="LbPeso" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
        
        
                </table>
             <table class="table table-stripped">
                        <tr>
            <th class="auto-style10">Fecha</th>
            <th class="auto-style5">Encargado</th>
            
            
        </tr>
         <%
          foreach (var item in TENS_proyecto.Controllers.FichaController.mostrarfichas())
          {%>  
                      
            <%
                TENS_proyecto.Paciente p = (TENS_proyecto.Paciente)Session["PacienteEnRevision"];
                
                if (p.ID_paciente.Equals(item.ID_paciente5))
                {%>

          <tr>
              <td class="auto-style10">
                <%= item.fecha%>
            </td>
            <td class="auto-style5">
                <%=item.TENS.Persona.nombre%>
                <%=item.TENS.Persona.apellido_paterno%>
            </td>
                  
            <td class="auto-style9">
                <a href="FichaM.aspx?ID=<%=item.ID_ficha%>">Seleccionar</a>
                <a href="FichaM.aspx?IDR=<%=item.ID_ficha%>">Eliminar</a>
            </td>
        </tr>
     <%} }%>
    
                
          <tr>
              <td class="auto-style10">
                <asp:Button ID="Button2" runat="server" onClick="AgregarFicha" Text="Agregar ficha" Width="247px" />
            </td>
        </tr>
                     
                </table>

             </div>
        </asp:Content>

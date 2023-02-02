<%@ Page Title="" Language="C#" MasterPageFile="~/PaginasM/Menu.Master" AutoEventWireup="true" CodeBehind="AgregarFichaM.aspx.cs" Inherits="TENS_proyecto.PaginasM.AgregarFichaM" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style2 {
            height: 15px;
        }
        .auto-style5 {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
     <table class="auto-style9">
        <tr>
            <td class="auto-style15" colspan="3" style="text-align:center">
                <strong class="accordion-header">Creacion de ficha
                </strong>
            </td>
        </tr>
        
       
        <tr>
            <td class="auto-style70">
                
                 
            </td>

            <td class="auto-style71">
                <asp:TextBox ID="txtFecha" placeholder="Ingrese fecha" runat="server" Width="709px" CssClass="auto-style52"></asp:TextBox>
                
                 
            </td>

            <td class="auto-style69">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtFecha" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtFecha" Display="Dynamic" ErrorMessage="Campo no valido, utilize formato MM/dd/AAAA" ForeColor="Red" ValidationExpression="^([0-9]|0[1-9]|1[012])\/([0-9]|0[1-9]|[12][0-9]|3[01])\/(19|20)\d\d$"></asp:RegularExpressionValidator> </td>
        </tr>
        <tr>
            <td class="auto-style53">
                
            </td>
            <td class="auto-style54">
                <asp:TextBox ID="txtNombreMed" placeholder="Ingrese nombre de medicina" runat="server" Width="709px"></asp:TextBox>
                
            </td>
            <td class="auto-style55">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombreMed" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td class="auto-style41">
                &nbsp;</td>
            <td class="auto-style28">
                <asp:TextBox ID="txtCantidadMed" runat="server" placeholder="Indique cantidad administrada" Width="708px"></asp:TextBox>
                
            </td>
            <td class="auto-style18">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="txtCantidadMed" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td class="auto-style42">
                &nbsp;</td>
            <td class="auto-style29">
                <asp:TextBox ID="txtClasificacionMed" runat="server" placeholder="Ingrese clasificacion de medicina" Width="707px"></asp:TextBox>
                
            </td>
            <td class="auto-style19">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtClasificacionMed" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style56">
                
            </td>
            <td class="auto-style57">
                <asp:TextBox ID="txtNombreDisp" runat="server" placeholder="Ingrese nombre de dispositivo usado" Width="707px"></asp:TextBox>
                
            </td>
            <td class="auto-style58">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNombreDisp" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style59">
                <td class="auto-style60">
                <asp:TextBox ID="txtProposito" runat="server" placeholder="Ingrese proposito de dispositivo" Width="705px"></asp:TextBox>
                
            <td class="auto-style61">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtProposito" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style62">
                
            </td>
            <td class="auto-style63">
                <asp:TextBox ID="txtAreaTratada" runat="server" placeholder="Ingrese area tratada" Width="706px"></asp:TextBox>
                
            </td>
            <td class="auto-style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtAreaTratada" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style45">
                &nbsp;</td>
            <td class="auto-style32">
                <asp:TextBox ID="txtClasificacionDisp" runat="server" placeholder="Ingrese clasificacion de dispositivo" Width="706px"></asp:TextBox>
                
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtClasificacionDisp" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style46">
                &nbsp;</td>
            <td class="auto-style33">
                <asp:TextBox ID="txtUmbral" runat="server" Width="706px" placeholder="Ingrese unbral de paciente"></asp:TextBox>
                
            </td>
            <td class="auto-style21">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtUmbral" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style72">
            </td>
            <td class="auto-style73">
                <asp:TextBox ID="txtPresionArterialDias" runat="server" Width="327px" placeholder="Ingrese presion arterial diastolica"></asp:TextBox>
                <asp:TextBox ID="txtPresionArterialSis" runat="server" Width="257px" placeholder="Ingrese presion arterial sistolica"></asp:TextBox>
               
                <br />
            </td>
            <td>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPresionArterialDias" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlTovalidate="txtPresionArterialDias" ErrorMessage="Ingrese solo valores decimales" ValidationExpression="^\d+[\.\,]\d+$" ForeColor="Red"></asp:RegularExpressionValidator>
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPresionArterialSis" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlTovalidate="txtPresionArterialSis" ErrorMessage="Ingrese solo valores decimales" ValidationExpression="^\d+[\.\,]\d+$" ForeColor="Red"></asp:RegularExpressionValidator></td>
             
            </tr>
        <tr>
            <td class="auto-style48">
                &nbsp;</td>
            <td class="auto-style35">
                <asp:TextBox ID="txtFrecuenciaResp" runat="server" Width="709px" placeholder="Ingrese frecuencia respiratoria"></asp:TextBox>
               
            </td>
            <td class="auto-style23">
               <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtFrecuenciaResp" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
           
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlTovalidate="txtFrecuenciaResp" ErrorMessage="Ingrese solo valores decimales" ValidationExpression="^\d+[\.\,]\d+$" ForeColor="Red"></asp:RegularExpressionValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style49">
                &nbsp;</td>
            <td class="auto-style36">
                <asp:TextBox ID="txtSAT" runat="server" Width="707px" placeholder="Ingrese SAT"></asp:TextBox>
                
            </td>
            <td class="auto-style24">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtSAT" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
           
                </td>
        </tr>
        <tr>
            <td class="auto-style50">
                &nbsp;</td>
            <td class="auto-style37">
                <asp:TextBox ID="txtCabello" runat="server" Width="208px" placeholder="Ingrese tiempo de lavado de cabello"></asp:TextBox>
                <asp:TextBox ID="txtCavidades" runat="server" Width="190px" placeholder="Ingrese tiempo de lavado de cavidades"></asp:TextBox>
                <asp:TextBox ID="txtGenitales" runat="server" Width="190px" placeholder="Ingrese tiempo de lavado de genitales"></asp:TextBox>
                
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="txtCabello" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="txtCavidades" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="txtGenitales" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
               </td>
        </tr>
        <tr>
            <td class="auto-style50">
                &nbsp;</td>
            <td class="auto-style37">
                <asp:TextBox ID="txtExamenes" runat="server" Width="315px" placeholder="Ingrese examenes pendientes"></asp:TextBox>
                <asp:TextBox ID="txtProcedimientos" runat="server" Width="331px" placeholder="Ingrese procedimientos pendiente"></asp:TextBox>
                
            </td>
            <td class="auto-style25">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="txtExamenes" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="txtProcedimientos" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="auto-style51">
                &nbsp;</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtHoraBañoCama" runat="server" Width="313px" placeholder="Ingrese hora de baño de cama"></asp:TextBox>
                <asp:TextBox ID="txtHoraDucha" runat="server" Width="331px" placeholder="Ingrese hora de ducha"></asp:TextBox>
               
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
               
            </td>
            <td class="auto-style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="txtHoraBañoCama" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="txtHoraDucha" Display="Dynamic" ErrorMessage="Campo Requerido" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
         <tr>
            <td class="auto-style45">
                 &nbsp;</td>
            <td class="auto-style5" colspan="2">
                 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:Button ID="Button1" runat="server" Text="Agregar" OnClick="AddFicha" Width="936px" />
                        <asp:UpdateProgress ID="UpdateProgress1" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
                            <ProgressTemplate >
                               <b>Creando ficha espere un momento....</b>
                            </ProgressTemplate>

                        </asp:UpdateProgress>
                    </ContentTemplate>

                </asp:UpdatePanel>
            </td>
        </tr>
    </table>
</asp:Content>

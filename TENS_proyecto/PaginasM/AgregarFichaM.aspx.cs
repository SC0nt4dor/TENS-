using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TENS_proyecto.Controllers;
namespace TENS_proyecto.PaginasM
{
    public partial class AgregarFichaM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidarUsuario();
            ValidarPaciente();
        }
        public void ValidarUsuario()
        {
            if (Session["UsuarioActivo"] == null)
            {
                Response.Redirect("LoginM.aspx");
            }

        }
        public void ValidarPaciente()
        {
            if (Session["PacienteEnRevision"] == null)
            {
                Response.Redirect("PrincipalM.aspx");
            }

        }
     
        public void AddFicha(object sender, EventArgs args)
        {
            System.Threading.Thread.Sleep(2000);
            TENS t = (TENS)Session["UsuarioActivo"];
            Paciente p = (Paciente)Session["PacienteEnRevision"];

            DispositivoController.addDispositivo(txtNombreDisp.Text, txtProposito.Text, txtAreaTratada.Text, txtClasificacionDisp.Text, p.ID_paciente);
            MedicamentoController.addMedicamento(Convert.ToInt32(txtCantidadMed.Text), txtNombreMed.Text, txtClasificacionMed.Text, p.ID_paciente);
            ControlSignosVitalesController.AñadirCSV(Convert.ToDouble(txtPresionArterialDias.Text), Convert.ToDouble(txtPresionArterialSis.Text), p.ID_paciente, Convert.ToDouble(txtFrecuenciaResp.Text), txtUmbral.Text, txtSAT.Text);
            AseoController.addAseo(txtCabello.Text, txtHoraBañoCama.Text, txtGenitales.Text, txtHoraDucha.Text,txtCavidades.Text, p.ID_paciente);

            Programacion_Aseo Aseo = AseoController.findAseo(p.ID_paciente);
            Medicamento med = MedicamentoController.findMedicamento(p.ID_paciente);
            ControlSignosVitales CSV = ControlSignosVitalesController.BuscarCSV(p.ID_paciente);
            DispositivoInvasor disp = DispositivoController.findDispositivo(p.ID_paciente);



            FichaController.AddFicha(t.ID_tens, p.ID_paciente, DateTime.ParseExact(txtFecha.Text, "MM/dd/yyyy", CultureInfo.InvariantCulture)/*, disp.ID_dispositivo, med.ID_medicamento, CSV.ID_CSV, Aseo.ID_Aseo*/,txtExamenes.Text,txtProcedimientos.Text);
            Response.Redirect("PaginaPacienteM.aspx");
        }
       
    }
}
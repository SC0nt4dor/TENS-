using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using TENS_proyecto.Controllers;
namespace TENS_proyecto.PaginasM
{
    public partial class FichaM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


            string ID = Request.QueryString["ID"];
            ficha_paciente F = FichaController.BuscarFicha(Convert.ToInt32(ID));
            if (F != null)
            {
                LbNombreEncargado.Text = F.TENS.Persona.nombre;
                LbApellidoPEncargado.Text = F.TENS.Persona.apellido_paterno;
                LbApellidoMEncargado.Text = F.TENS.Persona.apellido_materno;
                LbFecha.Text = Convert.ToString(F.fecha);
                LbNombreMedicina.Text = F.Medicamento.nombre_medicamento;
                LbClasificacion.Text = F.Medicamento.clasificacion;
                LbCantidad.Text = Convert.ToString(F.Medicamento.cantidad);
                LbNombreDispositivo.Text = F.DispositivoInvasor.nombre_dispositivo;
                //LbClasificacionDisp.Text = F.DispositivoInvasor.clasificacion;
                LbProposito.Text = F.DispositivoInvasor.proposito;
                LbAreaTratada.Text = F.DispositivoInvasor.area_tratada;
                LbUmbral.Text = F.ControlSignosVitales.umbral;
                LbFi02.Text = Convert.ToString(F.ControlSignosVitales.Fi02);
                LbPAM.Text = Convert.ToString(F.ControlSignosVitales.pam);
                LbCabello.Text = F.Programacion_Aseo.Tiempo_lavado_cabello;
                LbGenitales.Text = F.Programacion_Aseo.Tiempo_Aseo_Genital;
                LbDucha.Text = F.Programacion_Aseo.hora_ducha;
                LbCama.Text = F.Programacion_Aseo.Hora_Baño_cama;
                Session["FichaEnRevision"] = F;

            }
            else
            {
                Session["FichaEnRevision"] = null;
            }
            ValidarUsuario();
            ValidarPaciente();
            ValidarFicha();

            Eliminarficha();
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
        public void ValidarFicha()
        {
            if (Session["FichaEnRevision"] == null)
            {
                Response.Redirect("PaginaPacienteM.aspx");
            }
        }
        public void Eliminarficha()
        {
            string ID = Request.QueryString["IDR"];
            if (ID != null)
            {
                    FichaController.removeFicha(Convert.ToInt32(ID));
                }
                                       
            }
            
        
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TENS_proyecto.Controllers;


namespace TENS_proyecto.PaginasM
{
    public partial class PaginaPacienteM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string ID = Request.QueryString["ID"];
            Paciente p = PacienteController.BuscarPacienteRut(Convert.ToInt32(ID));
            if (p != null)
                {
                LbNombre.Text = p.Persona.nombre;
                LbApellidoP.Text = p.Persona.apellido_paterno;
                LbApellidoM.Text = p.Persona.apellido_materno;
                LbRUT.Text = p.Persona.RUT;
                LbGenero.Text = p.Persona.genero;
                LbAlergias.Text = p.alergias;
                LbAntecedentes.Text = p.antecedentes;
                LbPeso.Text = Convert.ToString(p.peso);
                Session["PacienteEnRevision"] = p;
            }
                else
                {
                    Session["PacienteEnRevision"] = null;
                }
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
            public void VolverInicio(object sender, EventArgs e)
            {
                Session["PacienteEnRevision"] = null;
                Response.Redirect("PrincipalM.aspx");

            }
            public void AgregarFicha(object sender, EventArgs e)
            {
                Response.Redirect("AgregarFichaM.aspx");

            }

            
        
    }
}
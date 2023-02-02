using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TENS_proyecto.Controllers;

namespace TENS_proyecto.PaginasM
{
    public partial class PrincipalM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidarUsuario();

        }
        public void ValidarUsuario()
        {
            if (Session["UsuarioActivo"] == null)
            {
                Response.Redirect("LoginM.aspx");
            }

        }

        protected void cerrarSesion(object sender, EventArgs e)
        {
            Session["UsuarioActivo"] = null;

        }
      /*  protected void BuscarPaciente(object sender, EventArgs e)
        {
            Paciente paciente = PacienteController.BuscarPaciente(txtNombre.Text, txtApellidoM.Text, txtApellidoP.Text);
            if (paciente != null)
            {
                string Rut = Request.QueryString["Rut"];
                Paciente p = PacienteController.BuscarPacienteRut(Convert.ToInt32(Rut));
                {


                }


            }
            else
            {

            }
        }
      */

        protected void Agregar_Paciente(object sender, EventArgs e)
        {
            Response.Redirect("AgregarPacienteM.aspx");
        }



      

       
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using TENS_proyecto.Controllers;
namespace TENS_proyecto.PaginasM
{
    public partial class AgregarPacienteM : System.Web.UI.Page
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
        protected void agregarPaciente(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(2000);
           
             PacienteController.addPaciente(txtNombre.Text, txtApellidoM.Text, txtApellidoP.Text, txtRut.Text, txtEnfermedad.Text, txtAntecedentes.Text, txtAlergias.Text, Convert.ToInt32(txtPeso.Text),ListaGenero.SelectedValue.ToString());
             Response.Redirect("PrincipalM.aspx");
           
            }
     
    }
}
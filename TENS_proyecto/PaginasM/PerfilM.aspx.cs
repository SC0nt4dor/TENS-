using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using TENS_proyecto.Controllers;

namespace TENS_proyecto.PaginasM
{
    public partial class PerfilM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UsuarioActivo"] == null)
            {
                Response.Redirect("LoginM.aspx");


            }
            TENS t = (TENS)Session["UsuarioActivo"];
            LbNombre.Text = t.Persona.nombre;
            LbApellidoP.Text = t.Persona.apellido_paterno;
            LbApellidoM.Text = t.Persona.apellido_materno;
            LbRUT.Text = Convert.ToString(t.Persona.RUT);
            LbCorreo.Text = t.Persona.email;

        }
        public void EditContra(object sender, EventArgs e)
        {
            Response.Redirect("ModificarContraseñaM.aspx");

        }
    }
  
}
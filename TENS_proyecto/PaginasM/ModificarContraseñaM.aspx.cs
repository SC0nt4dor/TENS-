using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using TENS_proyecto.Controllers;

namespace TENS_proyecto.PaginasM
{
    public partial class ModificarContraseñaM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidarUsuario();
        }
        public void ValidarUsuario()
        {
            if (Session["UsuarioActivo"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }
        public void cambiarContra(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(2000);
            TENS t = (TENS)Session["UsuarioActivo"];
            if (txtContraAntigua.Text == t.contrasena)
            {
                if (txtContraNueva.Text == txtContraNueva2.Text)
                {
                    TENSController.cambiarContra(txtContraNueva.Text, t.Persona.email);
                    Response.Write("Se ha cambiado la contraseña exitosamente");
                }
                else
                {
                    Response.Write("Ambas contraseñas no coinciden");
                }
            }
            else
            {
                Response.Write("Ingrese la contraseña antigua nuevamente");
            }
            Response.Redirect("LoginM.aspx");
        }
    }
}
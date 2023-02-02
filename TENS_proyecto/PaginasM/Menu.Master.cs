using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TENS_proyecto.Paginas
{
    public partial class Menu : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void cerrarSesion(object sender, EventArgs e)
        {
            Session["UsuarioActivo"] = null;
            Response.Redirect("LoginM.aspx");

        }
        protected void Perfil(object sender, EventArgs e)
        {
            Response.Redirect("PerfilM.aspx");

        }

    }
}
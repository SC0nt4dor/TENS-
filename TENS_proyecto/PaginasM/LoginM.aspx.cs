using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using TENS_proyecto.Controllers;


namespace TENS_proyecto.PaginasM
{
    public partial class LoginM : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void btnIngresar_click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(2000); 
            TENS t = TENSController.login(txtCorreo.Text, txtContra.Text);
            if (t != null)
            {
                Session["UsuarioActivo"] = t;
                Response.Redirect("PrincipalM.aspx");
            }
            else
            {
                Session["UsuarioActivo"] = null;
            }
        }
    }
}

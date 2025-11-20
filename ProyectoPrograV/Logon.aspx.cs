using ProyectoPrograV.DataModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoPrograV
{
    public partial class Logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (ValidateUser(txtUser.Text, txtPassword.Text))
            {
                Usuario usuario = new Usuario();
                usuario.name = txtUser.Text;
                usuario.role = "cliente";
                Session.Add("User", usuario);
                Session.Add("color", "azul");
                FormsAuthentication.RedirectFromLoginPage(txtUser.Text, true);
            }
            lblMensaje.Text = "Datos incorrectos";
            Response.Redirect("Logon.aspx", true);
        }

        public bool ValidateUser(string userName, string password)
        {
            if (userName == "" && password == "")
            {
                return true;
            }
            return false;
        }
    }
}
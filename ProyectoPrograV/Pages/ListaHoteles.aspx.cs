using System;
using System.Collections.Generic;
using System.Linq;
using DataModels;

namespace TuProyecto.Pages
{
    public partial class ListaHoteles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                CargarHoteles();
        }

        private void CargarHoteles()
        {
            try
            {
                using (PvProyectoFinalDB db = new PvProyectoFinalDB("MyDatabase"))
                {
                    List<Hotel> datos = db.Hotels.ToList();
                    grdHoteles.DataSource = datos;
                    grdHoteles.DataBind();
                }
            }
            catch
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
        }
    }
}

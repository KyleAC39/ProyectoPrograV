using DataModels;
using LinqToDB;
using System;
using System.Linq;

namespace TuProyecto.Pages
{
    public partial class CrearReservacion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    using (var db = new PvProyectoFinalDB("MyDatabase"))
                    {
                        ddlPersona.DataSource = db.Personas.ToList();
                        ddlPersona.DataTextField = "NombreCompleto";
                        ddlPersona.DataValueField = "IdPersona";
                        ddlPersona.DataBind();

                        ddlHabitacion.DataSource = db.Habitacions.ToList();
                        ddlHabitacion.DataTextField = "NumeroHabitacion";
                        ddlHabitacion.DataValueField = "IdHabitacion";
                        ddlHabitacion.DataBind();
                    }
                }
                catch
                {
                    Response.Redirect("~/Pages/Error.aspx");
                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                using (var db = new PvProyectoFinalDB("MyDatabase"))
                {
                    int idPersona = int.Parse(ddlPersona.SelectedValue);
                    int idHabitacion = int.Parse(ddlHabitacion.SelectedValue);

                    DateTime f1 = DateTime.Parse(txtEntrada.Text);
                    DateTime f2 = DateTime.Parse(txtSalida.Text);

                    int adultos = int.Parse(txtAdultos.Text);
                    int ninhos = int.Parse(txtNinhos.Text);

                    // Aquí podrías calcular costos a partir del hotel de la habitación, etc.
                    // Dejo el insert como TODO para que lo completes con tus reglas:
                    // db.Insert(new Reservacion { ... });

                    // Por ahora, solo redirigimos a mensaje para verificar el flujo.
                    Response.Redirect("~/Pages/Mensaje.aspx");
                }
            }
            catch
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
        }
    }
}

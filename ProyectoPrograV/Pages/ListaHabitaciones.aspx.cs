using DataModels;
using System;
using System.Collections.Generic;
using System.Linq;

namespace TuProyecto.Pages
{
    public partial class ListaHabitaciones : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) CargarHabitaciones();
        }

        private void CargarHabitaciones()
        {
            try
            {
                using (PvProyectoFinalDB db = new PvProyectoFinalDB("MyDatabase"))
                {
                    List<Habitacion> source = db.Habitacions.ToList();
                    List<Hotel> hoteles = db.Hotels.ToList();

                    List<HabitacionVista> vista = new List<HabitacionVista>();
                    for (int i = 0; i < source.Count; i++)
                    {
                        Habitacion h = source[i];
                        Hotel hot = hoteles.FirstOrDefault(x => x.IdHotel == h.IdHotel);

                        HabitacionVista v = new HabitacionVista();
                        v.IdHabitacion = h.IdHabitacion;
                        v.Hotel = hot != null ? hot.Nombre : "";
                        v.NumeroHabitacion = h.NumeroHabitacion;
                        v.CapacidadMaxima = h.CapacidadMaxima;
                        v.Descripcion = h.Descripcion;
                        v.EstadoTexto = (h.Estado == 'A') ? "Activo" : "Inactivo";

                        vista.Add(v);
                    }

                    grdHabitaciones.DataSource = vista;
                    grdHabitaciones.DataBind();
                }
            }
            catch
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
        }

        private class HabitacionVista
        {
            public int IdHabitacion { get; set; }
            public string Hotel { get; set; }
            public string NumeroHabitacion { get; set; }
            public int CapacidadMaxima { get; set; }
            public string Descripcion { get; set; }
            public string EstadoTexto { get; set; }
        }
    }
}

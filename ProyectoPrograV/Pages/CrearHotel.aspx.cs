using System;
using DataModels;
using LinqToDB;

namespace TuProyecto.Pages
{
    public partial class CrearHotel : System.Web.UI.Page
    {
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                string nombre = txtNombre.Text.Trim();
                string direccion = txtDireccion.Text.Trim();

                decimal costoAdulto = Convert.ToDecimal(txtCostoAdulto.Text);
                decimal costoNinho = Convert.ToDecimal(txtCostoNinho.Text);

                if (string.IsNullOrWhiteSpace(nombre))
                    throw new ApplicationException("El nombre es obligatorio.");

                using (var db = new PvProyectoFinalDB("MyDatabase"))
                {
                    // Inserción directa con linq2db usando las entidades generadas
                    Hotel h = new Hotel
                    {
                        Nombre = nombre,
                        Direccion = string.IsNullOrWhiteSpace(direccion) ? null : direccion,
                        CostoPorCadaAdulto = costoAdulto,
                        CostoPorCadaNinho = costoNinho
                    };

                    db.Insert(h);
                }

                // Mensaje bonito (puedes cambiar a otra página si prefieres)
                Response.Redirect("~/Pages/Mensaje.aspx");
            }
            catch
            {
                Response.Redirect("~/Pages/Error.aspx");
            }
        }
    }
}

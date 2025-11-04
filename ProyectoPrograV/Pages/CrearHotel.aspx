<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="CrearHotel.aspx.cs" Inherits="TuProyecto.Pages.CrearHotel" %>
<asp:Content ID="c1" ContentPlaceHolderID="MainContent" runat="server">

  <h2>Crear hotel</h2>

  <div class="row">
    <div class="col-sm-8 col-md-6">

      <div class="form-group">
        <label>Nombre</label>
        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" />
      </div>

      <div class="form-group">
        <label>Dirección (opcional)</label>
        <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="3" />
      </div>

      <div class="form-group">
        <label>Costo por cada adulto</label>
        <asp:TextBox ID="txtCostoAdulto" runat="server" CssClass="form-control" />
      </div>

      <div class="form-group">
        <label>Costo por cada niño</label>
        <asp:TextBox ID="txtCostoNinho" runat="server" CssClass="form-control" />
      </div>

      <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary"
                  OnClick="btnGuardar_Click" />
      <a href="ListaHabitaciones.aspx" class="btn btn-link">Cancelar</a>

    </div>
  </div>

</asp:Content>

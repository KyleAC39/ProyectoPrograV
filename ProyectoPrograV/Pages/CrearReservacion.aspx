<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="CrearReservacion.aspx.cs" Inherits="TuProyecto.Pages.CrearReservacion" %>
<asp:Content ID="c1" ContentPlaceHolderID="MainContent" runat="server">

  <h2>Crear reservación</h2>

  <div class="row">
    <div class="col-sm-8 col-md-6">

      <div class="form-group">
        <label>Persona</label>
        <asp:DropDownList ID="ddlPersona" runat="server" CssClass="form-control" />
      </div>

      <div class="form-group">
        <label>Habitación</label>
        <asp:DropDownList ID="ddlHabitacion" runat="server" CssClass="form-control" />
      </div>

      <div class="form-group">
        <label>Fecha entrada</label>
        <asp:TextBox ID="txtEntrada" runat="server" TextMode="Date" CssClass="form-control" />
      </div>

      <div class="form-group">
        <label>Fecha salida</label>
        <asp:TextBox ID="txtSalida" runat="server" TextMode="Date" CssClass="form-control" />
      </div>

      <div class="form-group">
        <label>Número de adultos</label>
        <asp:TextBox ID="txtAdultos" runat="server" TextMode="Number" CssClass="form-control" />
      </div>

      <div class="form-group">
        <label>Número de niños</label>
        <asp:TextBox ID="txtNinhos" runat="server" TextMode="Number" CssClass="form-control" />
      </div>

      <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-primary" OnClick="btnGuardar_Click" />
      <a href="ListaHabitaciones.aspx" class="btn btn-link">Cancelar</a>

    </div>
  </div>

</asp:Content>

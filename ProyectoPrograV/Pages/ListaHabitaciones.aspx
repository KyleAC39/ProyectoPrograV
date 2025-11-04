<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ListaHabitaciones.aspx.cs" Inherits="TuProyecto.Pages.ListaHabitaciones" %>
<asp:Content ID="c1" ContentPlaceHolderID="MainContent" runat="server">
  <h2>Lista de habitaciones</h2>

  <asp:GridView ID="grdHabitaciones" runat="server"
      AutoGenerateColumns="False"
      CssClass="table table-striped table-bordered table-hover table-condensed"
      GridLines="None" CellPadding="6" Width="100%" UseAccessibleHeader="true">
    <HeaderStyle CssClass="bg-info" />
    <Columns>
      <asp:BoundField DataField="IdHabitacion" HeaderText="ID" />
      <asp:BoundField DataField="Hotel" HeaderText="Hotel" />
      <asp:BoundField DataField="NumeroHabitacion" HeaderText="Número" />
      <asp:BoundField DataField="CapacidadMaxima" HeaderText="Capacidad" />
      <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
      <asp:BoundField DataField="EstadoTexto" HeaderText="Estado" />
    </Columns>
    <EmptyDataTemplate>
      <div class="alert alert-info" style="margin:0">No hay habitaciones para mostrar.</div>
    </EmptyDataTemplate>
  </asp:GridView>
</asp:Content>

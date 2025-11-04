<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="ListaHoteles.aspx.cs" Inherits="TuProyecto.Pages.ListaHoteles" %>

<asp:Content ID="c1" ContentPlaceHolderID="MainContent" runat="server">
  <h2>Lista de hoteles</h2>

  <p>
    <a href="CrearHotel.aspx" class="btn btn-primary btn-sm">Crear hotel</a>
    <a href="CrearReservacion.aspx" class="btn btn-success btn-sm">Crear reservación</a>
  </p>

  <asp:GridView ID="grdHoteles" runat="server"
      AutoGenerateColumns="False"
      CssClass="table table-striped table-bordered table-hover table-condensed"
      GridLines="None" CellPadding="6" Width="100%" UseAccessibleHeader="true">
    <HeaderStyle CssClass="bg-info" />
    <Columns>
      <asp:BoundField DataField="IdHotel"            HeaderText="ID" />
      <asp:BoundField DataField="Nombre"            HeaderText="Hotel" />
      <asp:BoundField DataField="Direccion"         HeaderText="Dirección" />
      <asp:BoundField DataField="CostoPorCadaAdulto" HeaderText="Costo adulto" DataFormatString="{0:N2}" HtmlEncode="False" />
      <asp:BoundField DataField="CostoPorCadaNinho"  HeaderText="Costo niño"   DataFormatString="{0:N2}" HtmlEncode="False" />
    </Columns>
    <EmptyDataTemplate>
      <div class="alert alert-info" style="margin:0">No hay hoteles para mostrar.</div>
    </EmptyDataTemplate>
  </asp:GridView>
</asp:Content>

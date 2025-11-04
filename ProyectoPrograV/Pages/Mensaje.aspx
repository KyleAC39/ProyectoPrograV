<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Mensaje.aspx.cs" Inherits="TuProyecto.Pages.Mensaje" %>
<asp:Content ID="c1" ContentPlaceHolderID="MainContent" runat="server">
  <h2>Proceso finalizado</h2>
  <div class="alert alert-success">
    Se ha completado correctamente el registro del nuevo hotel en la base de datos.
  </div>
  <a href="ListaHabitaciones.aspx" class="btn btn-default">Regresar</a>
</asp:Content>

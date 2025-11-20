<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="ProyectoPrograV.Logon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblUser" runat="server" Text="User Name:"></asp:Label>
            <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        </div>

        <div>
            <asp:Label ID="lblpassword" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="txtPassword" TextMode="Password" runat="server"></asp:TextBox>
        </div>
            <asp:Button ID="btnLogin" runat="server" Text="Acceder"  />
            <asp:Label ID="lblMensaje" runat="server" Text="" BackColor="Red"></asp:Label>
    </form>
</body>
</html>

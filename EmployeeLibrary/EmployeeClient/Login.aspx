<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmployeeClient.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
      $(document).ready(function () {
        $("div").remove(".aspNetHidden");
        $("#__VIEWSTATEGENERATOR").remove();
        $("#__EVENTVALIDATION").remove();
        $("#__VIEWSTATE").remove();
    });
    </script>
    
</head>
<body>
    <form id="form1" runat="server">
        <div align ="center">
            <asp:Label ID="Label1"  Font-Bold="true" runat="server" Text="Login"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Email :"></asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
            <asp:TextBox ID="pass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>

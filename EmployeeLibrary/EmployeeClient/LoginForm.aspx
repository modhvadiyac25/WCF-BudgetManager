<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="EmployeeClient.LoginForm" %>

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
<style>
    div {
  border-radius: 5px;
  background-color: #4e6ce6 ;
  border-style : solid ;
  padding: 30px;
  width: 250px;
  align: center;
  position: relative;
	top:0;
	bottom: 0;
	left: 0;
	right: 0;
	margin: auto; 
        border-style: double solid;
        border-width: 5px;
}
   </style>
</head>

<body>
    <form id="form1" runat="server">
        <div align="center" >
            <asp:Label ID="Label1" runat="server" Text="Login Form"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Username : "></asp:Label>
            <asp:TextBox ID="email" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
&nbsp;:<asp:TextBox ID="pass" type="password" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="login" runat="server" OnClick="login_Click" Text="Login" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
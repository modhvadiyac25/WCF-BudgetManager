<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="EmployeeClient.OginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
&nbsp;:<asp:TextBox ID="pass" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="login" runat="server" Text="Login" OnClick="login_Click" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
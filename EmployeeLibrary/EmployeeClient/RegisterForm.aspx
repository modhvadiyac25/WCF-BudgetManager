<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="EmployeeClient.RegisterForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript" src="js/JScript.js" ></script>
    <title></title>
</head>
<body>
    <div align="center">
    <form id="form1" runat="server" >
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Registration"></asp:Label>
        <br />
        <div style="margin-left: 40px">
            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
&nbsp;<asp:TextBox ID="fnm" runat="server" style="margin-left: 93px" Width="267px" required></asp:TextBox>
            <br />
            <br />
            Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="lnm" runat="server" Width="267px" required></asp:TextBox>
            <br />
            <br />
            Email Addrees&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="eid" runat="server" style="margin-left: 6px" Width="267px" required></asp:TextBox>
            <br />
            <br />
            Mobile No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="mno" runat="server" Height="20px" style="margin-left: 0px" Width="266px" required></asp:TextBox>
            <br />
            <br />
            Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="pass" runat="server" Width="272px" required></asp:TextBox>
            <br />
            <asp:CompareValidator ControlToCompare="pass" ControlToValidate="cpass"  ID="CompareValidator1" runat="server" ErrorMessage="Password and Confirm Password does not match !" ForeColor="Red"></asp:CompareValidator>
            <br />
            Confirm Pasword&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="cpass" runat="server" Width="272px" required></asp:TextBox>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_register" runat="server" Text="Register" OnClick="btn_register_Click" />
        </div>
    </form>
        </div>
    <asp:Label ID="Label3" runat="server"></asp:Label>
</body>
</html>


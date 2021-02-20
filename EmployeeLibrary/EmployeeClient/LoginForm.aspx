<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="EmployeeClient.OginForm" %>

<!DOCTYPE html>

<html><head>
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
<style>
input[type=text] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  -webkit-transition: 1.0s;
  transition: 1.0s;
  outline: none;
}

input[type=text]:focus {
  border: 3px solid red;
}
input[type=password] {
   width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  -webkit-transition: 1.0s;
  transition: 1.0s;
  outline: none;
}
input[type=password]:focus {
  border: 3px solid red;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
  font-weight: bold;
}

label {
    color : #dfe7e0 ;
    font-weight: bold;
}
div {
  border-radius: 5px;
  background-color: #4e6ce6;
  border-style : solid;
  padding: 30px;
  width: 250px;
  align: center;
  position: relative;
	top:9px;
	bottom: -289px;
	left: -4px;
	right: 4px;
  	
	margin: auto;
}
h1 {
    text-align: center;
    color : #fefdfd ;
    font-weight: bold;
}
h3 {
    text-align: center;
    color : #fefdfd ;
    font-weight: bold;
}
.center {
  margin: auto;
  width: 50%;
  padding: 10px;
}
.backColor {
    color: #ebebeb;
    background-color: #4fc7fa;
}

</style>
<body class="backColor">
<div class="center">
    <h1>Login Here</h1>
     
    <form id="form1"  runat="server">
       
    <label for="mail">Email Id</label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <label for="password">Password</label>
    <input type="password" id="password" name="password" placeholder="Enter Your Password.." required>
        <asp:Button ID="login" runat="server" Text="login" OnClick="login_Click"  />
	<h3>Don't have an account?<a href="#">Click Here</a></h3>
    </form>     
</div>
</body>
</html>

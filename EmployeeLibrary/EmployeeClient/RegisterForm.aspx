<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterForm.aspx.cs" Inherits="EmployeeClient.RegisterForm" %>

<!DOCTYPE html> 

<html> 
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).ready(function () {
                $("div").remove(".aspNetHidden");
          
            });
        </script>
    
    <script language="Javascript" type="text/javascript">
        var check = function () {

            if (document.getElementById('pass1').value === document.getElementById('pass2').value) {
                document.getElementById('message').style.color = 'green';
                document.getElementById('message').innerHTML = 'Password Matched';
                document.getElementById('Register').disabled = false;
            }
            else {
                document.getElementById('message').style.color = 'red';
                document.getElementById('message').innerHTML = 'Password is not matching';
                document.getElementById('Register').disabled = true;
            }
        }

        function onlyAlphabets(e, t) {
            try {
                if (window.event) {
                    var charCode = window.event.keyCode;
                }
                else if (e) {
                    var charCode = e.which;
                }
                else { return true; }
                if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))
                    return true;
                else
                    return false;
            }
            catch (err) {
                alert(err.Description);
            }
        }

        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                return false;
            }
            return true;
        }

    </script>
<style>
    
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
  background-color: 48f3df;
} 
    
input[type=email] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  -webkit-transition: 1.0s;
  transition: 1.0s;
  outline: none;
}

input[type=email]:focus {
  background-color: 48f3df;
} 
select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  -webkit-transition: 1.0s;
  transition: 1.0s;
  outline: none;
}

select:focus {
  background-color: 48f3df;
}    

input[type=date] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  -webkit-transition: 1.0s;
  transition: 1.0s;
  outline: none;
}

input[type=date]:focus {
  background-color: 48f3df;
}    

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
  background-color: 48f3df;
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
  background-color: 48f3df;
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

.backColor {
    color: ebebeb;
    background-color: #4fc7fa;
}
h1 {
    text-align: center;
    color : #fefdfd ;
    font-weight: bold;
}
.center {
  margin: auto;
  width: 50%;
  padding: 10px;
}


</style>
    </head>
<body class="backColor">
<div class="center">
    <h1>Registration</h1>
    <form id="form1" runat="server">
       
       
    <asp:TextBox runat="server" type="text" id="fname" name="fname" placeholder="First Name..." required></asp:TextBox>
        

    <asp:TextBox runat="server" type="text" id="lname" name="lastname" placeholder="Last Name..." required></asp:TextBox>
 

    <asp:TextBox runat="server" type="email" ID="mail" name="mail" placeholder="Enter your email address..." ></asp:TextBox>

    <asp:TextBox runat="server" type="password" id="pass1" name="pass1" placeholder="Enter your Password..."  onkeyup='check();' required=""></asp:TextBox>
    
    <asp:TextBox runat="server" type="password" id="pass2" name="pass2" placeholder="Confirm Password..." onkeyup='check();' required=""></asp:TextBox>
      <span id='message'></span>
      <asp:TextBox runat="server" type="text" id="mno" name="mno" placeholder="Enter your mobile number..." required="" maxlength="10" onkeypress="return isNumber(event)"></asp:TextBox>
    
        <asp:Button ID="registration" runat="server" Text="Register"  value="Register" OnClick="Button1_Click" />
   
    </form>
</div>
    <asp:Label ID="Label1" runat="server" Text=" "></asp:Label>
</body>
</html>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddIncome.aspx.cs" Inherits="EmployeeClient.AddIncome" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script>
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


            select {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }


            .divClass {
                border-radius: 5px;
                background-color: #f2f2f2;
                padding: 20px;
            }

            .myText {
                width: 100%;
                padding: 12px 20px;
                margin: 8px 0;
                display: inline-block;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;

            }

            .myButton {
                width: 100%;
                background-color: #4CAF50;
                color: white;
                padding: 14px 20px;
                margin: 10px 0;
                border: none;
                border-radius: 4px;
                cursor: pointer;

            }

            .myButton:hover {
                background-color: #45a049;
            }



            body {
                font-family: Arial, Helvetica, sans-serif;
            }

            .navbar {
                overflow: hidden;
                background-color: #333;
            }

            .navbar a {
                float: left;
                font-size: 16px;
                color: white;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
            }

            .dropdown {
                float: left;
                overflow: hidden;
            }

            .dropdown .dropbtn {
                font-size: 16px;  
                border: none;
                outline: none;
                color: white;
                padding: 14px 16px;
                background-color: inherit;
                font-family: inherit;
                margin: 0;
            }

            .navbar a:hover, .dropdown:hover .dropbtn {
                background-color: red;
            }

            .dropdown-content {
                display: none;
                position: absolute;
                background-color: #f9f9f9;
                min-width: 160px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
                z-index: 1;
            }

            .dropdown-content a {
                float: none;
                color: black;
                padding: 12px 16px;
                text-decoration: none;
                display: block;
                text-align: left;
            }

            .dropdown-content a:hover {
                background-color: #ddd;
            }

            .dropdown:hover .dropdown-content {
                display: block;
            }
        </style>
    </head>
    <body>
        <div class="navbar">
            <a href="home.jsp">Home</a>
            <div class="dropdown">
                <button class="dropbtn">Categories 
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="income_category.jsp">Add Income</a>
                    <a href="expense_category.jsp">Add Expense</a>
                </div>
            </div> 
            <div class="dropdown">
                <button class="dropbtn">Add Your Own Categories 
                    <i class="fa fa-caret-down"></i>
                </button>
                <div class="dropdown-content">
                    <a href="own_income_category.jsp">Add Your Own Income Category</a>
                    <a href="own_expense_category.jsp">Add Your Own Expense Category</a>
                </div>
            </div> 
            <a href="LogoutServlet">Logout</a>

        </div>

        <div class="divClass">
           
            <form action="assessIncome"> 
                <label for="inc_cat"><h4><b>Select Your Income Category</b></h4></label>
                            
                <select id="inc_cat" name="income">
                    
                </select>
                
                <h4><b>Enter Your Income Below</b></h4>


                <input type="text" id="income1" name="income1" placeholder="Enter Your Total Income.." class="myText" required="" maxlength="10" onkeypress="return isNumber(event)">

                <input type="submit" value="Proceed" class="myButton">
            </form>
        </div>

    </body>
</html>

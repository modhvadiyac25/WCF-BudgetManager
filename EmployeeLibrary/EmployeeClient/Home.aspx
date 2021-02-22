<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="EmployeeClient.Home" %>

<!DOCTYPE html>

<html>
    <head runat="server"><title>Home Page</title></head>
    <body>
        
        <form id="form1" runat="server">
               <div>
                    <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal">
                <Items>
                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Home" Value="Home">
                    </asp:MenuItem>

                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Categories" Value="Categories">
                        <asp:MenuItem NavigateUrl="~/AddIncome.aspx" Text="Add Income" Value="AddIncome">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AddExpense.aspx" Text="Add Expense" Value="AddExpense">
                        </asp:MenuItem>
                    </asp:MenuItem>

                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Add your own categories" Value="AddYourOwnCategories">
                        <asp:MenuItem NavigateUrl="~/AddOwnIncome.aspx" Text="Add your own income category" Value="AddYourOwnIncome">
                        </asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AddOwnExpense.aspx" Text="Add your own expense category" Value="AddYourOwnExpense">
                        </asp:MenuItem>
                    </asp:MenuItem>

                    <asp:MenuItem NavigateUrl="~/Logout.aspx" Text="Logout" Value="Logout">
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
               </div>
            <div>

                <br />
                <br />

                <br />
                Welcome ,
                <asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Select Month and Year"></asp:Label>
                <br />
                <br />

                <asp:TextBox ID="TextBox1" TextMode="Month" runat="server"></asp:TextBox>

                <br />
                <br />
                <asp:Button ID="find" runat="server" Text="Find" />

            </div>
        </form>

    </body>
</html>
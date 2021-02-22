<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddExpense.aspx.cs" Inherits="EmployeeClient.AddExpense" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head runat="server">
          <title>Add Expense</title>
    </head>
    <body>
    
        <form id="form1" runat="server">
        <div align="center">
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

                    <asp:MenuItem NavigateUrl="~/Home.aspx" Text="Logout" Value="Logout">
                    </asp:MenuItem>
                </Items>
            </asp:Menu>
            <br />
            <br />
        </div>

        <div>

            <asp:Label ID="Label1" runat="server" Text="Select your expense cetegory"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="26px" Width="223px">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Enter your expense"></asp:Label>
            <br />
            <asp:TextBox ID="txt_exp" runat="server" Width="215px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btn_exp" runat="server"  Text="Proceed" OnClick="btn_exp_Click" />
            <br />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </div>
    </form>
    
    </body>
</html>

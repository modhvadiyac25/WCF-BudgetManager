<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddOwnIncome.aspx.cs" Inherits="EmployeeClient.AddOwnIncome" %>

<!DOCTYPE html>

<!DOCTYPE html>
<html> <head runat="server"> 
    <title>Add Own Income</title>
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

            <asp:Label ID="Label3" runat="server" Text="Add your own income category"></asp:Label>
            <br />
            <asp:TextBox ID="tb_oinc_cat" runat="server" Width="241px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_add_oinc" runat="server" Text="Add to my list" OnClick="btn_add_oinc_Click" />
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Select your own income category"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList1" runat="server" Height="18px" Width="245px" >
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Enter your income"></asp:Label>
            <br />
            <asp:TextBox ID="tb_oinc" runat="server" Width="235px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_inc" runat="server"   Text="Proceed" OnClick="btn_inc_Click" />

            <br />

            <br />
            <asp:Label ID="Label6" runat="server"></asp:Label>

        </div>
    </form>
    </body>
</html>


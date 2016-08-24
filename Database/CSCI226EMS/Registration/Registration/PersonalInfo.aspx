<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalInfo.aspx.cs" Inherits="Registration.PersonalInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body background="Silver-Blur-Background-Wallpaper.jpg">
    <form id="form1" runat="server">
    <div align="center">
    

    
       <h1> <b>Enter Employee Personal Information</b></h1>
       <table class="style1">
            <tr>
                <td align="center" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="right">
                    <h3>Employee Id</h3></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <h3>Enter Employee Address</h3></td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <h3>Enter Employee Phone</h3>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <h3>Enter Employee Age</h3></td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    <h3>Enter Employee Marital Status</h3></td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                   <h3> Enter Employee Experience</h3>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td>
                    <br />
                    <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
                        Text="Submit" Width="103px" />
                </td>
            </tr>
        </table>
    

    
    </div>
    <br />
    <br />
    </form>
</body>
</html>

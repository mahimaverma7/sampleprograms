<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Registration.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 124px;
        }
        .style2
        {
            width: 395px;
        }
    </style>
</head>
<body background="Silver-Blur-Background-Wallpaper.jpg">
    <form id="form1" runat="server">
    <p align="center" style="font-size: large">
        <strong>LOGIN PAGE</strong></p>
    <table class="style1">
        <tr>
            <td align="right" class="style2">
                User Name</td>
            <td>
                <asp:TextBox ID="txtlogun" runat="server" Width="187px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtlogun" ErrorMessage="Enter the User Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                Password</td>
            <td>
                <asp:TextBox ID="txtlogpass" runat="server" TextMode="Password" Width="187px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtlogpass" ErrorMessage="Enter the Password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="style2">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="26px" onclick="Button1_Click" 
                    Text="Login" Width="191px" />
                <br />
                <br />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

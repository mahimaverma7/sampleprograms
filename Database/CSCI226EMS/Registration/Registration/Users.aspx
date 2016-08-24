<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Registration.Users" %>

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
<body background="bg-main-ppl%20(1).jpg">
    <form id="form1" runat="server" 
    style="background-image: url('bg-main-ppl (1).jpg'); height:inherit">
    <br />
    <br />
    <table class="style1">
        <tr>
            <td align="center" colspan="2">
               <h1>Welcome To Admin Portal Of EMP</h1>
            </td>
        </tr>
        <tr>
            <td>
    <asp:Label ID="lable_welcome" runat="server" Text="Welcome...."></asp:Label>
            </td>
            <td align="right">
    <asp:Button ID="btnlogout" runat="server" Height="37px" 
        onclick="btnlogout_Click" Text="Logout" Width="74px" />
            </td>
        </tr>
    </table>
    <br />
    <table class="style1">
        <tr>
            <td align="center">
        <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
            Text="Add Users" Width="173px" />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
        <asp:Button ID="Button2" runat="server" Height="32px" onclick="Button2_Click" 
            Text="Modify Employee" Width="173px" />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
        <asp:Button ID="Button3" runat="server" Height="32px" onclick="Button3_Click" 
            Text="Search" Width="173px" />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button4" runat="server" 
            Text="Employee Info" Width="172px" Height="32px" onclick="Button4_Click" />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
        <asp:Button ID="Button5" runat="server" Height="32px" onclick="Button5_Click" 
            Text="History" Width="173px" />
                <br />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <br />
    <br />
    <br />
    <div align="right">
    <br />
    </div>
    <div>

    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />

    
    </div>
    </form>
</body>
</html>

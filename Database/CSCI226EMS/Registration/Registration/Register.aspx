<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Registration.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1 {
            width: 118px;
        }
        .style2
        {
            width: 157px;
        }
        #Reset1
        {
            width: 68px;
        }
    </style>
</head>
<body background="Silver-Blur-Background-Wallpaper.jpg">
    <form id="form1" runat="server">
      <center><h1>Welcome to the Registration Portal</h1></center>
   <center><table>
   <tr><td class="style1">First Name : </td><td><asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
       <td class="style2">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
               ControlToValidate="txtname" ErrorMessage="Enter Valid Name" 
               ForeColor="Red"></asp:RequiredFieldValidator>
       </td></tr>
   <tr><td class="style1">Last Name : </td><td><asp:TextBox ID="txtln" runat="server"></asp:TextBox></td>
       <td class="style2"></td></tr>
   <tr><td class="style1">Address : </td><td><asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox></td>
       <td class="style2">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
               ControlToValidate="txtadd" ErrorMessage="Enter Valid Address" 
               ForeColor="Red"></asp:RequiredFieldValidator>
       </td></tr>
   <tr><td class="style1">Country</td><td><asp:DropDownList Id="ddcountry" 
           runat="server" Width="182px">
       <asp:ListItem>Austrailia</asp:ListItem>
       <asp:ListItem>India</asp:ListItem>
       <asp:ListItem>USA</asp:ListItem>
       <asp:ListItem>Canada</asp:ListItem>
       <asp:ListItem>Rome</asp:ListItem>
       <asp:ListItem>Dubai</asp:ListItem>
       <asp:ListItem>Russia</asp:ListItem>
       <asp:ListItem>Brazil</asp:ListItem>
       <asp:ListItem>Uk</asp:ListItem>
       </asp:DropDownList></td><td class="style2">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
               ControlToValidate="ddcountry" ErrorMessage="Select A Country" 
               ForeColor="Red"></asp:RequiredFieldValidator>
       </td></tr>
   <tr><td class="style1">Username : </td><td><asp:TextBox ID="txtun" runat="server"></asp:TextBox></td>
       <td class="style2">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
               ControlToValidate="txtun" ErrorMessage="Enter Valid Username" 
               ForeColor="Red"></asp:RequiredFieldValidator>
       </td></tr>
   <tr><td class="style1">Password : </td><td><asp:TextBox ID="txtpass" runat="server"></asp:TextBox></td>
       <td class="style2">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
               ControlToValidate="txtpass" ErrorMessage="Enter Valid Password" 
               ForeColor="Red"></asp:RequiredFieldValidator>
       </td></tr>
   <tr><td class="style1">Confirm Password</td><td><asp:TextBox ID="txtcpass" runat="server"></asp:TextBox></td>
       <td class="style2">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
               ControlToValidate="txtcpass" ErrorMessage="Confirm your password" 
               ForeColor="Red"></asp:RequiredFieldValidator>
           <asp:CompareValidator ID="CompareValidator1" runat="server" 
               ControlToCompare="txtpass" ControlToValidate="txtcpass" 
               ErrorMessage="Password doesn't match" ForeColor="Red"></asp:CompareValidator>
       </td></tr>
   <tr><td class="style1">Email-Id : </td><td><asp:TextBox ID="txtemail" runat="server"></asp:TextBox></td>
       <td class="style2">
           <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
               ErrorMessage="Enter a valid Email" ControlToValidate="txtemail" 
               ForeColor="Red" 
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
           <br />
           <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
               ControlToValidate="txtemail" ErrorMessage="Enter your email id" 
               ForeColor="Red"></asp:RequiredFieldValidator>
           <br />
       </td></tr>
<tr><td class="style1"></td><td> <asp:Button ID="registration" runat="server" Text="Sign UP" 
        onclick="registration_Click" />&nbsp;
    <br />
&nbsp;<br />
    <br />
    </td><td class="style2"></td></tr>
   </table></center>
  
    </form>
</body>
</html>

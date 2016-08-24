<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Modificatio_ History.aspx.cs" Inherits="Registration.Modificatio__History" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <b><h1><asp:Label ID="Label1" runat="server" Text="Modification Trigger On Employee"></asp:Label>
        </h1></b>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="Triggering">
            <Columns>
                <asp:BoundField DataField="Entered_Date" HeaderText="Entered_Date" 
                    SortExpression="Entered_Date" />
                <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" 
                    SortExpression="Employee_Name" />
                <asp:BoundField DataField="Old_Department_Name" 
                    HeaderText="Old_Department_Name" SortExpression="Old_Department_Name" />
                <asp:BoundField DataField="New_Department_Name" 
                    HeaderText="New_Department_Name" SortExpression="New_Department_Name" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Triggering" runat="server" 
            ConnectionString="<%$ ConnectionStrings:226regiConnectionString %>" 
            SelectCommand="SELECT * FROM [Employee_Audit]"></asp:SqlDataSource>
    
    <p>&nbsp;</p><div>
    
    </div>
    </form>
</body>
</html>

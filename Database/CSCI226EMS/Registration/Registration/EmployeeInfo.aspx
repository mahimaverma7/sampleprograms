<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeInfo.aspx.cs" Inherits="Registration.EmployeeInfo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" CellPadding="4" DataSourceID="EmployeeAllInfo" 
        ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="Employee_Id" HeaderText="Employee_Id" 
                SortExpression="Employee_Id" />
            <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" 
                SortExpression="Employee_Name" />
            <asp:BoundField DataField="Employee_Phone" HeaderText="Employee_Phone" 
                SortExpression="Employee_Phone" />
            <asp:BoundField DataField="Marital_Status" HeaderText="Marital_Status" 
                SortExpression="Marital_Status" />
            <asp:BoundField DataField="Employee_Address" HeaderText="Employee_Address" 
                SortExpression="Employee_Address" />
            <asp:BoundField DataField="Employee_Salary" HeaderText="Employee_Salary" 
                SortExpression="Employee_Salary" />
            <asp:BoundField DataField="Experience" HeaderText="Experience" 
                SortExpression="Experience" />
            <asp:BoundField DataField="Working_Hours" HeaderText="Working_Hours" 
                SortExpression="Working_Hours" />
            <asp:BoundField DataField="Department_Name" HeaderText="Department_Name" 
                SortExpression="Department_Name" />
            <asp:BoundField DataField="Department_Info" HeaderText="Department_Info" 
                SortExpression="Department_Info" />
            <asp:BoundField DataField="HOD" HeaderText="HOD" SortExpression="HOD" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="EmployeeAllInfo" runat="server" 
        ConnectionString="<%$ ConnectionStrings:226regiConnectionString %>" 
        
        SelectCommand="SELECT Employee.Employee_Id, Employee.Employee_Name, Employee_Personal.Employee_Phone, Employee_Personal.Marital_Status, Employee_Personal.Employee_Address, Employee.Employee_Salary, Employee_Personal.Experience, EmpDeptInfo.Working_Hours, EmpDeptInfo.Department_Name, Departmentinfo.Department_Info, EmpDeptInfo.HOD FROM Employee_Personal LEFT OUTER JOIN Employee ON Employee_Personal.Employee_ID = Employee.Employee_Id LEFT OUTER JOIN EmpDeptInfo ON Employee.Department_Name = EmpDeptInfo.Department_Name LEFT OUTER JOIN Departmentinfo ON EmpDeptInfo.Department_Name = Departmentinfo.Department_Name">
    </asp:SqlDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>

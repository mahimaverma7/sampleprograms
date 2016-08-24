<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="Registration.Search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body background="Silver-Blur-Background-Wallpaper.jpg">
    <form id="form1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" Width="177px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search By Department" />
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="3" DataKeyNames="Employee_Id" DataSourceID="Searchdatasource">
        <Columns>
            <asp:BoundField DataField="Employee_Id" HeaderText="Employee_Id" 
                ReadOnly="True" SortExpression="Employee_Id" />
            <asp:BoundField DataField="Department_Name" 
                HeaderText="Department_Name" SortExpression="Department_Name" />
            <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" 
                SortExpression="Employee_Name" />
            <asp:BoundField DataField="Employee_Salary" HeaderText="Employee_Salary" 
                SortExpression="Employee_Salary" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <asp:SqlDataSource ID="Searchdatasource" runat="server" 
        ConnectionString="<%$ ConnectionStrings:226regiConnectionString %>" 
        
        SelectCommand="SELECT * FROM [Employee] WHERE ([Department_Name] LIKE '%' + @Department_Name + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="TextBox1" Name="Department_Name" 
                PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div>
    
        <br />
        <br />
        <asp:TextBox ID="TextBox2" runat="server" Width="177px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Search By Salary" />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="Employee_Id" DataSourceID="searchsal">
            <Columns>
                <asp:BoundField DataField="Employee_Id" HeaderText="Employee_Id" 
                    ReadOnly="True" SortExpression="Employee_Id" />
                <asp:BoundField DataField="Department_Name" 
                    HeaderText="Department_Name" SortExpression="Department_Name" />
                <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" 
                    SortExpression="Employee_Name" />
                <asp:BoundField DataField="Employee_Salary" HeaderText="Employee_Salary" 
                    SortExpression="Employee_Salary" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="searchsal" runat="server" 
            ConnectionString="<%$ ConnectionStrings:226regiConnectionString %>" 
            SelectCommand="SELECT * FROM [Employee] WHERE ([Employee_Salary] = @Employee_Salary)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="Employee_Salary" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="searchyear" runat="server" 
            ConnectionString="<%$ ConnectionStrings:226regiConnectionString %>" 
            
            
            SelectCommand="SELECT * FROM [Employee] WHERE ([Employee_Salary] &lt; @Employee_Salary)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox2" Name="Employee_Salary" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:TextBox ID="TextBox3" runat="server" Width="177px"></asp:TextBox>
        <asp:Button ID="Button3" runat="server" Text="Search By Name" />
        <br />
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
            CellPadding="3" DataKeyNames="Employee_Id" DataSourceID="searchbyname">
            <Columns>
                <asp:BoundField DataField="Employee_Id" HeaderText="Employee_Id" 
                    ReadOnly="True" SortExpression="Employee_Id" />
                <asp:BoundField DataField="Department_Name" 
                    HeaderText="Department_Name" SortExpression="Department_Name" />
                <asp:BoundField DataField="Employee_Name" HeaderText="Employee_Name" 
                    SortExpression="Employee_Name" />
                <asp:BoundField DataField="Employee_Salary" HeaderText="Employee_Salary" 
                    SortExpression="Employee_Salary" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="searchbyname" runat="server" 
            ConnectionString="<%$ ConnectionStrings:226regiConnectionString %>" 
            SelectCommand="SELECT * FROM [Employee] WHERE ([Employee_Name] LIKE '%' + @Employee_Name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox3" Name="Employee_Name" 
                    PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Update Portal</div>
        <p>
            &nbsp;</p>
        <p>
            Input Your Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="139px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_search" runat="server" Text="Search" Width="81px" />
        </p>
        <p>
            Student Name :&nbsp;&nbsp;&nbsp; <asp:Label ID="s_name" runat="server"></asp:Label>
&nbsp;</p>
        <p>
            Father Name&nbsp;&nbsp; :&nbsp;&nbsp;
            <asp:Label ID="f_name" runat="server"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Btn_update" runat="server" Text="Button" Width="81px" />
        </p>
    </form>
</body>
</html>

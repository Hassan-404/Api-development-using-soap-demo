<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demopage.aspx.cs" Inherits="demopage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #003300;
        }
        .auto-style2 {
            width: 53%;
            height: 123px;
        }
        .auto-style3 {
            width: 237px;
        }
        </style>
</head>
<body style="background-color: #3399FF">
    <form id="form1" runat="server">
        <p>
            &nbsp;</p>
        <p style="height: 0px; width: 1266px; text-align: center; font-size: xx-large">
&nbsp; <span class="auto-style1">Presentation</span></p>
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style3">Input Your Desired ID</td>
                <td>
                    <asp:TextBox ID="idtext" runat="server" BackColor="#66CCFF" BorderColor="Red" BorderStyle="Outset" BorderWidth="1mm" style="margin-left: 0px" Width="281px" OnTextChanged="idtext_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btn" runat="server" BackColor="#666633" BorderColor="#999966" BorderStyle="Outset" BorderWidth="1mm" ForeColor="#003300" Text="Submit" Width="83px" OnClick="btn_Click" />
                </td>
            </tr>
        </table>
        <p>
            Student Enrollment ID :&nbsp; <asp:Label ID="sid" runat="server"></asp:Label>
        </p>
        <p>
            Student Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : <asp:Label ID="stdname" runat="server"></asp:Label>
        </p>
        <p>
            Father Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                    <asp:Label ID="fathername" runat="server"></asp:Label>
                </p>
    </form>
</body>
</html>

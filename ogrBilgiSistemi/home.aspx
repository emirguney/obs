<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="ogrBilgiSistemi.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title>Dil Kursu Yönetim Programı</title>
</head>
<body>
    <form id="form1" runat="server">

        <div style="margin:auto">
        <p>
            <asp:Label ID="Label1" runat="server" Text="Dil Kursu Yönetim Programı" BorderColor="White" Font-Size="Larger" Font-Underline="False" ForeColor="White"></asp:Label>
        </p>
        <div class="auto-style9">
            <asp:ImageButton ID="ImageButton1" runat="server" Height="250px" ImageUrl="~/images/—Pngtree—icon business analysis in vectors_3540005.png" Width="250px" ImageAlign="Middle" OnClick="ImageButton1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="250px" ImageUrl="~/images/—Pngtree—graduate cap_3413859.png" Width="250px" ImageAlign="AbsMiddle" OnClick="ImageButton2_Click" />
        </div>
        
        <p class="auto-style10">
            &nbsp; <button type="button" class="btn btn-info">Yönetici Girişi</button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button type="button" class="btn btn-info">Öğrenci Girişi</button>
        </p>
        <p>
            
&nbsp;</p>
        <p style="margin-left: 200px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
            </div>
        
    </form>

    <style>
        body{
            background-color: royalblue;
        }
        p{background-color: royalblue;}

        .auto-style9 {
            margin-left: 360px;
        }
        .auto-style10 {
            margin-left: 400px;
        }

    </style>

</body>
</html>

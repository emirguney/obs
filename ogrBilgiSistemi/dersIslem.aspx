<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dersIslem.aspx.cs" Inherits="ogrBilgiSistemi.dersIslem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title><style>
                      body {background-color:chocolate;}
                   </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:400px; width:600px; padding: 20px;position: absolute;
    top: 50%;
    left: 50%;
    margin-left: -300px;
    margin-top: -150px;">
   AÇIK KURSLAR<br />
&nbsp;<asp:GridView ID="GridView1" runat="server" Height="288px" Width="593px">
            </asp:GridView>

        </div>
        <div style="margin-left:6100px; width:600px; padding: 20px; position: absolute;
    top: 50%;
    left: 50%;
    margin-left: 350px;
    margin-top: -150px;">


            <asp:LinkButton ID="LinkButton1" runat="server">Seçili Kuru Kapat</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton3" runat="server">Seçili Sınıfı Listele</asp:LinkButton>
            <br />
            <br />
            <asp:LinkButton ID="LinkButton4" runat="server">Yeni Kur Ekle</asp:LinkButton>


        </div>
    </form>
</body>
</html>

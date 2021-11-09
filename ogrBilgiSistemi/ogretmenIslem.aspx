<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogretmenIslem.aspx.cs" Inherits="ogrBilgiSistemi.ogretmenIslem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            background-color: lightsalmon;
        }

        .auto-style4 {
            width: 610px;
            position: absolute;
            top: 55%;
            left: 47%;
            height: 293px;
        }

        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div style="margin-left:400px; width:600px; padding: 20px;position: absolute;
    top: 50%;
    left: 50%;
    margin-left: -300px;
    margin-top: -150px;">
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="Görüntülenecek hiç veri kaydı yok." ForeColor="Black" GridLines="Vertical" Width="575px">
                 <AlternatingRowStyle BackColor="White" />
                 <Columns>
                     <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" />
                     <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
                     <asp:BoundField DataField="soyadi" HeaderText="soyadi" SortExpression="soyadi" />
                     <asp:BoundField DataField="uyruk" HeaderText="uyruk" SortExpression="uyruk" />
                 </Columns>
                 <FooterStyle BackColor="#CCCC99" />
                 <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                 <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                 <RowStyle BackColor="#F7F7DE" />
                 <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#FBFBF2" />
                 <SortedAscendingHeaderStyle BackColor="#848384" />
                 <SortedDescendingCellStyle BackColor="#EAEAD3" />
                 <SortedDescendingHeaderStyle BackColor="#575357" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ogrBilgSistConnectionString1 %>" ProviderName="<%$ ConnectionStrings:ogrBilgSistConnectionString1.ProviderName %>" SelectCommand="SELECT [id], [adi], [soyadi], [uyruk] FROM [ogtTbl]"></asp:SqlDataSource>
        </div>
        <div style="margin-left:6100px; width:600px; padding: 20px; position: absolute;
    top: 50%;
    left: 50%;
    margin-left: 350px;
    margin-top: -150px;">

            <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/images/plus.png" OnClick="ImageButton1_Click" Width="70px" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="30px" Text="Öğretmen Ekle" Width="135px" />
            <br />
            <br />
            <asp:ImageButton ID="ImageButton2" runat="server" Height="70px" ImageUrl="~/images/clear.png" Width="70px" />
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Height="30px" Text="Öğretmen Sil" Width="135px" />
            <br />
            <br />
            <br />
            <br />

        </div>
        <div style="margin-left:400px; padding: 20px;margin-left: -700px;
    margin-top: -150px;" class="auto-style4">
            Kimlik Numarası : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Öğretmen Adı :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
             Öğretmen Soyadı :&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
             Telefonu :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
             Uyruğu :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>

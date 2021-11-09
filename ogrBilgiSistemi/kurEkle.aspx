<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kurEkle.aspx.cs" Inherits="ogrBilgiSistemi.kurEkle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 600px;
            position: absolute;
            top: 83%;
            left: -17%;
            height: 157px;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
        .auto-style3 {
            width: 600px;
            position: absolute;
            top: 44%;
            left: 50%;
            height: 455px;
        }
        .auto-style4 {
            width: 600px;
            position: absolute;
            top: 44%;
            left: 50%;
            height: 243px;
        }

        body{
            background-color: wheat;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:400px; padding: 20px;margin-left: -700px;
    margin-top: -150px;" class="auto-style4">
            Kur Bilgisi :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ></asp:TextBox>
            <br />
            <br />
            Türk Öğretmen Adı :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
             Yabancı Öğretmen Adı :
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
             Başlangıç Tarihi :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
             Bitiş Tarihi :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
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
        <div style="margin-left:400px; padding: 20px;margin-left: -50px;
    margin-top: -150px;" class="auto-style3">
            Kura Dahil Olacak Öğrenciler<br />
&nbsp;<asp:GridView ID="GridView2" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" EmptyDataText="Görüntülenecek hiç veri kaydı yok." ForeColor="Black" GridLines="Vertical" Height="370px" Width="582px" DataKeyNames="id">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                    <asp:BoundField DataField="Kur Adı" HeaderText="Kur Adı" SortExpression="Kur Adı" />
                    <asp:BoundField DataField="Başlangıç Tarihi" HeaderText="Başlangıç Tarihi" SortExpression="Başlangıç Tarihi" />
                    <asp:BoundField DataField="Bitiş Tarihi" HeaderText="Bitiş Tarihi" SortExpression="Bitiş Tarihi" />
                    <asp:BoundField DataField="Yerli Öğretmen" HeaderText="Yerli Öğretmen" SortExpression="Yerli Öğretmen" />
                    <asp:BoundField DataField="Yabancı Öğretmen" HeaderText="Yabancı Öğretmen" SortExpression="Yabancı Öğretmen" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ogrBilgSistConnectionString1 %>" SelectCommand="SELECT * FROM [kurlar]"></asp:SqlDataSource>
        </div>
        <div style="margin-left:6100px; padding: 20px; margin-left: 350px;
    margin-top: -150px;" class="auto-style1">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/images/plus.png" OnClick="ImageButton1_Click" Width="70px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="70px" ImageUrl="~/images/clear.png" Width="70px" OnClick="ImageButton2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="30px" Text="Kur Ekle" Width="135px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="30px" Text="Kur Sil" Width="135px" CssClass="auto-style2" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;
            
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

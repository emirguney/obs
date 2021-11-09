<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogrenciIslem.aspx.cs" Inherits="ogrBilgiSistemi.ogrenciIslem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            background-color: wheat;
        }

        .auto-style2 {
            width: 121px;
            position: absolute;
            top: 101%;
            left: 33%;
        }

        .auto-style4 {
            width: 610px;
            position: absolute;
            top: 37%;
            left: 52%;
            height: 293px;
        }

        .auto-style5 {
            width: 600px;
            position: absolute;
            top: 37%;
            left: 78%;
        }
        .auto-style1 {
            width: 589px;
            position: absolute;
            top: 82%;
            left: -22%;
            height: 157px;
            margin-left: 470px;
            margin-top: -150px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:400px; padding: 20px;  margin-left: -400px;
    margin-top: -150px;" class="auto-style5">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" EmptyDataText="Görüntülenecek hiç veri kaydı yok." ForeColor="Black" GridLines="Vertical" Height="416px" Width="607px" DataKeyNames="Tc_kimlik_no" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Tc_kimlik_no" HeaderText="Tc_kimlik_no" SortExpression="Tc_kimlik_no" ReadOnly="True" />
                    <asp:BoundField DataField="Adı" HeaderText="Adı" SortExpression="Adı" />
                    <asp:BoundField DataField="Soyadı" HeaderText="Soyadı" SortExpression="Soyadı" />
                    <asp:BoundField DataField="Telefon_Numarası" HeaderText="Telefon_Numarası" SortExpression="Telefon_Numarası" />
                    <asp:BoundField DataField="Sifre" HeaderText="Sifre" SortExpression="Sifre" />
                    <asp:BoundField DataField="Kur_Bilgisi" HeaderText="Kur_Bilgisi" SortExpression="Kur_Bilgisi" />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ogrBilgSistConnectionString1 %>" SelectCommand="SELECT * FROM [ogrenciTbl]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ogrBilgSistConnectionString1 %>" SelectCommand="SELECT * FROM [ogrenciTbl]"></asp:SqlDataSource>
        </div>
        <div style="margin-left:400px; padding: 20px;margin-left: -700px;
    margin-top: -150px;" class="auto-style4">
            Tc Kimlik Numarası : &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Öğrenci Adı :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
             Öğrenci Soyadı :&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <br />
             Telefonu :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <br />
            <br />
             Sifresi :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            Kur Bilgisi :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
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
        <div style="padding: 20px; " class="auto-style1">

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

            <asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/images/plus.png" OnClick="ImageButton1_Click" Width="70px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="70px" ImageUrl="~/images/clear.png" Width="70px" OnClick="ImageButton2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="30px" Text="Öğrenci Ekle" Width="135px" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="30px" Text="Öğrenci Sil" Width="135px" CssClass="auto-style2" OnClick="Button2_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="omenu.aspx.cs" Inherits="ogrBilgiSistemi.omenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 491px;
        }
        div.a {
          position: absolute;
          right: 0;
        }  

        .auto-style2 {
            width: 600px;
            position: absolute;
            left: 626px;
            top: 200px;
        }

    </style>
</head>
<body style="background-color:cornflowerblue">
   
    <form id="form1" runat="server" class="auto-style1">
       <div style="margin-left:100px; width:600px; padding: 20px; position: absolute;
    top: 50%;
    left: 50%;
    margin-left: -700px;
    margin-top: -150px;">
           Kur Adı :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

           <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
           <br />
           <br />

           Devamsızlık Durumu :
              <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
           <br />
           <br />

           Ders Dökümanları :
           <br />
           <asp:GridView ID="GridView1" runat="server" Width="362px">
           </asp:GridView>
        </div>
        <div style="margin-left:100px; padding: 20px; margin-right:350px" class="auto-style2">
            Dönemlik Ders Planı :

            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>

        </div>
       

    </form>
       
        
    
</body>
</html>

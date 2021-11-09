<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ygiris.aspx.cs" Inherits="ogrBilgiSistemi.ygiris1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title></title>
    <style type="text/css">
        body{
            background-color: royalblue;
        }

        .auto-style2 {
            width: 600px;
            position: absolute;
            top: 50%;
            left: 49%;
        }
        .auto-style3 {
            position: absolute;
            margin-top: .3rem;
            margin-left: -1.25rem;
            left: -1px;
            top: 2px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:400px; padding: 20px;margin-left: -300px;
    margin-top: -150px;" class="auto-style2">
       
            <div class="form-group">
    <label for="exampleInputEmail1">Kullanıcı Adı</label>
           <asp:TextBox ID="TextBox3" runat="server" cssclass="form-control"></asp:TextBox>
           
    
  </div>
  <div class="form-group">
      <br />
    <label for="exampleInputPassword1">Şifre</label>
      <asp:TextBox ID="TextBox2" runat="server" cssclass="form-control" type ="password"></asp:TextBox>
&nbsp;
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="auto-style3" id="exampleCheck1">&nbsp;&nbsp;&nbsp;&nbsp;
    <label class="form-check-label" for="exampleCheck1">Beni Hatırla</label>
  </div>
  
            <br />
  
            <asp:Button ID="Button1" runat="server" CssClass="btn-primary" Text="Giriş" OnClick="Button1_Click1" />
</div>
    </form>
    </form>
</body>
</html>

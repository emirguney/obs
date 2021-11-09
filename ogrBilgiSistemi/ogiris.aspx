<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ogiris.aspx.cs" Inherits="ogrBilgiSistemi.ogiris" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <title></title>
    <style type="text/css">
        body{
            background-color: sandybrown;
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
       <div class="form-group">
    <label for="exampleInputEmail1">Kullanıcı Adı</label>
           <asp:TextBox ID="KulAdi" runat="server" cssclass="form-control" ></asp:TextBox>
&nbsp;
    
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Şifre</label>
      <asp:TextBox ID="Sif" runat="server" CssClass="form-control" type ="password" ></asp:TextBox>
&nbsp;
  </div>
  <div class="form-group form-check">
    <input type="checkbox" class="form-check-input" id="exampleCheck1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <label class="form-check-label" for="exampleCheck1">Beni Hatırla</label>
  </div>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;<asp:Button ID="Button1" runat="server" Text="Giriş" CssClass="btn-primary" type="submit" OnClick="Button1_Click" />
            &nbsp;&nbsp;
            <br />
</div>
    </form>
    </body>
</html>

<script language="c#" runat="server">
    private void Page_Load(){
      TchLstLink.NavigateUrl="ListBox.aspx";
    }
</script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXUF8NL9IXjBed6bRktqtyZqpsp2ea2xkQzA&usqp=CAU" type="image/x-icon">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="font-face.css">
    <title>ASP.Net</title>
</head>
<body>
  <h2>ທ.ໄຊປັນຍາ ພົງສາ</h2>
       <!-- without function -->
      <asp:HyperLink id="LstLink" NavigateUrl="https://www.soundcloud.com/" Target="_blank" Text="Soundcloud" runat="server"/>
      <br>
      <!-- with function -->
      <asp:HyperLink id="TchLstLink" Target="_blank" Text="ListBox Page" runat="server"/>


</body>
</html>


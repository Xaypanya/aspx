<script language="c#" runat="server">
    String greet_LO = "ສະບາຍດີ";
    String greet_VN = "Xinh Chao";
    private void showDetails(Object s, EventArgs e){
      lbNumber.Text = greet_LO;
    }

    private void plusHandler(Object s, EventArgs e){
      lbNumber.Text = greet_VN;
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
  <form runat="server">
    <asp:Button id="btnSubmit" Text="Greeting" OnClick="showDetails" runat="server"  />
    <asp:Button id="btnPlus" Text="Plus +" OnClick="plusHandler" runat="server"  />
  </form>
  <hr>
  <asp:label id="lbNumber" Text="" runat="server"/>
</body>
</html>


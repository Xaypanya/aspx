
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
  <asp:ImageButton 
  id="btnSubmit1" 
  ImageUrl="images/play-button.png"
  Height="120"
  BorderColor="#dddddd"  
  BorderStyle="Dotted"  
  BorderWidth="5"  
  OnClick="btnSubmit" 
  runat="server" 
  />
</form>
<hr>
<h3>Display Label:</h3>
<asp:label id="lbNumber" Text="" runat="server"/>

</body>
</html>

<script language="c#" runat="server">
 
  void btnSubmit(Object sender,ImageClickEventArgs e)
  {
      lbNumber.Text = e.X +","+ e.Y;
  }
   
</script>


<script language="c#" runat="server">
    private void showDetails(Object sender,EventArgs e) {
      showText.Text = "ເຈົ້າໄດ້ເລືອກ: <br />";
      foreach(ListItem language in Programming.Items){
          if (language.Selected) {
              showText.Text += language.Text + "<br />";
          }
      }
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
    <title>ASP.Net</title>
</head>
<body>
  <h2>ທ.ໄຊປັນຍາ ພົງສາ</h2>
    <form  runat="server">
            <asp:CheckBoxList 
            id="Programming"
            runat="server"
            >
            <asp:ListItem>Java</asp:ListItem>
            <asp:ListItem>ASP.Net</asp:ListItem>
            <asp:ListItem>PHP</asp:ListItem>
          </asp:CheckBoxList>
     
            <asp:Button 
            ID="Button1" 
            runat="server" 
            Text="Submit" 
            OnClick="showDetails"
            />
  
        <hr>
      <br>
      <asp:label id="showText" Text="" runat="server"/>
      </form>
</body>
</html>


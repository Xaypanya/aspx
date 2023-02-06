<script language="c#" runat="server">
    private void showDetails(Object sender,EventArgs e) {
      showText.Text = "Your selected item(s)....<br />";

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
  <link rel="shortcut icon" href="https://cdn-icons.flaticon.com/png/512/2632/premium/2632839.png?token=exp=1637120749~hmac=a7c1a5378a9514f615631279149bc3ca" type="image/x-icon">
  <title>ASP.Net</title>
</head>
<body>
  <h1>Hello. I'm ASP.net ສະບາຍດີ</h1>
  <form  runat="server">
    <asp:CheckBoxList 
      ID="Programming"
      runat="server"
      Font-Size="Large"
      >
      <asp:ListItem>Java</asp:ListItem>
      <asp:ListItem>PHP</asp:ListItem>
      <asp:ListItem>JSP</asp:ListItem>
      <asp:ListItem>Asp.Net</asp:ListItem>
      <asp:ListItem>Python</asp:ListItem>
      <asp:ListItem>Javascript</asp:ListItem>
      <asp:ListItem>Ruby</asp:ListItem>
      <asp:ListItem>C#</asp:ListItem>
      <asp:ListItem>Go</asp:ListItem>
      <asp:ListItem>HTML</asp:ListItem>
   </asp:CheckBoxList>
  <asp:Button 
  ID="Button1" 
  runat="server" 
  Text="Show Result" 
  OnClick="showDetails"
  Font-Bold="true"
  Font-Size="Large"
  ForeColor="Navy"
  Height="45"
  Width="150"
  />
  <br>
  <asp:label id="showText" Text="" runat="server"/>
  </form>
</body>
</html>

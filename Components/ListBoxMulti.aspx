<script language="c#" runat="server">
    private void showDetails(Object s, EventArgs e){
      showText.Text = "Selected item: ";
      foreach(ListItem windows in lsWindows.Items){
            if (windows.Selected) {
                showText.Text += "<li>"+windows.Text + "<br />";
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
      <link rel="stylesheet" href="font-face.css">
      <title>ASP.Net</title>
  </head>
  <body>
    <h2>ທ.ໄຊປັນຍາ ພົງສາ</h2>
      <form  runat="server">
        <asp:ListBox id="lsWindows" runat="server" selectionMode="Multiple">
          <asp:ListItem Text="Windows 7" />
          <asp:ListItem Text="Windows 10" />
          <asp:ListItem Text="Windows Vista" />
          <asp:ListItem Text="Windows XP" />
        </asp:ListBox>
        <asp:Button id="submit" Text="submit" OnClick="showDetails" runat="server"/>
        <hr>
        <asp:label id="showText" Text="" runat="server"/>
        </form>
  </body>
  </html>
  
  
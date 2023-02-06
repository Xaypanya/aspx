<script language="c#" runat="server">
 
    static int amount = 0;
    private void Button_Command(Object s, CommandEventArgs e){
     
      if(e.CommandName == "Add"){
         amount ++;
         lbNumber.Text = amount.ToString();
      } 
      if(e.CommandName == "Substract"){
         amount --;
         lbNumber.Text = amount.ToString();
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
  <form runat="server">
    <asp:Button 
    Text="+ 1" 
    CommandName="Add"
    OnCommand="Button_Command"
    runat="server"  />
  
    <asp:Button 
    Text="- 1" 
    CommandName="Substract"
    OnCommand="Button_Command"
    runat="server"  />
  
  </form>
  <hr>
  <asp:label id="lbNumber" Text="" runat="server"/>
  <asp:label id="lbMyNumber" Text="" runat="server"/>
  </body>
  </html>
  
  
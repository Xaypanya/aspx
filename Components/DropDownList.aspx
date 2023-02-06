<script language="c#" runat="server">
    private void showDetails(Object s, EventArgs e){
       //  if(CountryDropDown.SelectedValue == ""){
       //      showText.Text = "You are not select yet!";
       //  }else{
       //      showText.Text = CountryDropDown.SelectedValue;
       //  }

       showText.Text = CountryDropDown.SelectedIndex+1+". "+CountryDropDown.SelectedItem.Text;

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
       <p>Select your City.</p>
      <asp:DropDownList id="CountryDropDown" runat="server">
       <asp:ListItem>New Delhi </asp:ListItem>  
       <asp:ListItem>Vientiane</asp:ListItem>  
       <asp:ListItem>NewYork</asp:ListItem>  
       <asp:ListItem>Paris</asp:ListItem>  
       <asp:ListItem>London</asp:ListItem>  
       <asp:ListItem>Hanoi</asp:ListItem>  
       <asp:ListItem>Bangkok</asp:ListItem>  
      </asp:DropDownList>
   <br>
   <hr>
   <asp:Button OnClick="showDetails" runat="server" Text="Show Result"/>

   <br>
   <asp:label id="showText" Text="" runat="server"/>
   </form>
</body>
</html>

<!-- <asp:CheckBoxList id="checkbox">
           <asp:ListItem />
       </asp:CheckBoxList> -->
<script language="c#" runat="server">
    String message = "";
    private void showDetails(Object s, EventArgs e){
            if(recieve.Checked){
                message += recieve.Text+"<br>";
            }
            if(agree.Checked){
                message += agree.Text+"<br>";
            }
            showText.Text = message;
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
        <asp:CheckBox id="recieve" Text="recieve newsletter." runat="server"/>
        <br>
        <asp:CheckBox id="agree" Text="agree to term of services" runat="server"/>
        <br>
        <asp:Button id="btnSubmit" Text="Submit" OnClick="showDetails" runat="server"/>
        <hr>
        <asp:label id="showText" Text="" runat="server"/>
    </form>
</body>
</html>

<!-- <asp:CheckBoxList id="checkbox">
            <asp:ListItem />
        </asp:CheckBoxList> -->
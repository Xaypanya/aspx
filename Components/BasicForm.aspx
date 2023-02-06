<script language="c#" runat="server">
    private void showName(Object s, EventArgs e){
        String name = inputName.Text;
        labelMessage.Text = name; 
    }
</script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASP.Net</title>
</head>
<body>
    <h1>Hello. I'm ASP.net ສະບາຍດີ</h1>
    <form id="f1" runat="server">
        <asp:label id="labelName" Text="Username" runat="server" />
        <br>
        <asp:TextBox id="inputName" placeholder="hint"  runat="server" />
        <asp:Button id="btnShowName" Text="show name" OnClick="showName" runat="server" />
        <br>
        <hr>
        <asp:label id="labelMessage" runat="server" />
    </form>
</body>
</html>
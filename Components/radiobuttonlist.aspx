<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>radiobuttonlist</title>
</head>
<body bgcolor="<%=myBgColor %>">
    <form runat="server">
        <h2>please select your favorite color:</h2>
        <p>
            <asp:RadioButtonList id="radColor" AutoPostBack="true"   runat="server">
                <asp:ListItem  Text="Red" Selected="true"/>
                <asp:ListItem  Text="Yellow"/>
                <asp:ListItem  Text="Purple"/>
                <asp:ListItem  Text="Grey"/>
            </asp:RadioButtonList>
        </p>
    </form>
</body>
</html>
<script language="C#" runat="server">
    String myBgColor="#EEEEEE";
    private void Page_Load(){
        if(IsPostBack){
            myBgColor=radColor.SelectedItem.Text;
        }
    }
</script>
<script language="C#" runat="server">
    private void showMajor(Object s, EventArgs e){
        if(CS.Checked){
            lbText.Text = CS.Text;
        }
        if(CPr.Checked){
            lbText.Text = CPr.Text;
        }
        if(CW.Checked){
            lbText.Text = CW.Text;
        }
    }

    private void resetMajor(Object s, EventArgs e){
        lbText.Text = "";
    }
</script>


<!DOCTYPE html>
<html lang="lo">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RadioButton</title>
</head>
<body>
    <h1>Hello</h1>
    <form runat="server">
        <h2>ກະລຸນາເລືອກ</h2>
        <p>
            <asp:RadioButton id="CS" text="Computer Science" GroupName="major" runat="server"/>
            <br>
            <asp:RadioButton id="CPr" text="Computer Program" GroupName="major" runat="server"/>
            <br>
            <asp:RadioButton id="CW" text="Computer Website" GroupName="major" runat="server"/>
        </p>
        <asp:Button Text="Submit" id="idOK" OnClick="showMajor" runat="server"/>
        <asp:Button Text="Reset" id="idReset" OnClick="resetMajor" runat="server"/>
        <hr>
        <p>Your major is: </p>
        <asp:label id="lbText" Text="" runat="server"/>
    </form>
</body>
</html>
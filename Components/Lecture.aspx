<script language="C#" runat="server">
    private void showDetails(Object s, EventArgs e){
        lbMSG.Text = "<h3>"+inputName.Text+"</h3>";
    }

    private void radioClick(Object s, EventArgs e){
        if(radioButton1.Checked){
            lbMSG2.Text = radioButton1.Text;
        }else{
            lbMSG2.Text = radioButton2.Text;
        }
    }
</script>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lecture</title>
</head>
<body>
    <h1>Hello</h1>
    <form id="form" runat="server">
        <asp:label Text="Name:" runat="server"/>
        <asp:TextBox id="inputName" placeholder="Enter your name"  Height="20"  runat="server"/>
        <br>
        <div>  
            <asp:RadioButton value="malee" id="radioButton1" runat="server" Text="Male" OnCheckedChanged="radioClick" GroupName="gender"/>  
            <asp:RadioButton value="femalee" id="radioButton2" runat="server" Text="Female" OnCheckedChanged="radioClick" GroupName="gender" />  
        </div> 
        <asp:label Text="Lastname:" runat="server"/>
        <asp:TextBox id="inputLastName" placeholder="Enter your lastname"  Height="20"  runat="server"/>
        <br>
        <asp:label Text="Password:" runat="server"/>
        <asp:TextBox Textmode="password" id="inputPassword" Height="20"  MaxLength="8"  placeholder="Enter your password" runat="server"/>
        <br>
        <asp:label Text="Address:" runat="server"/>A
        <asp:TextBox Textmode="multiline" id="inputAddress" Height="20" rows="10" columns="30" MaxLength="8"  placeholder="Enter your password" runat="server"/>
        <br>

        <asp:Button id="btnSummit" OnClick="showDetails" Text="Submit" runat="server"/>
        <asp:Button id="btnReset" Text="Reset" runat="server"/>
        <asp:ImageButton id="ImageButton1" runat="server" ImageUrl="btn.png" style="width: 50px;" />
        <hr>
        <h3>Show details</h3>
        <asp:label id="lbMSG" runat="server"/>
        <asp:label id="lbMSG2" runat="server"/>
    </form>
</body>
</html>
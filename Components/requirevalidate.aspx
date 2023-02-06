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

  ID: <asp:TextBox id="txtID" runat="server" />

  <asp:RequiredFieldValidator 
  ControlToValidate="txtID" 
  ErrorMessage="Can not leave blank" 
  runat="server" />
  <br>
  Name: <asp:TextBox id="txtName" runat="server" />
  <br>
  Score: <asp:TextBox id="txtScore" runat="server" />

  <asp:RangeValidator
  ControlToValidate="txtScore"
  MinimumValue="0"
  MaximumValue="100"
  Type="Integer"
  runat="server"
  ErrorMessage="Invalid Value"
  EnableClientScript="false"
  />
  <br>
  Password: <asp:TextBox id="txtPassword" runat="server" />
  <br>
  Confirm Password: <asp:TextBox id="txtCfPassword" runat="server" />
  <asp:CompareValidator
  ControlToValidate="txtPassword"
  ControlToCompare="txtCfPassword"
  runat="server"
  Operator="Equal"
  Display="Dynamic"
  ErrorMessage="Password does not match!"
  EnableClientScript="false"
  />
  <br>
  Email: <asp:TextBox id="txtEmail" runat="server" />
  <br>
  <asp:RegularExpressionValidator
  ControlToValidate="txtEmail"
  ValidationExpression=".*@.*\..*"
  Text="Invalid Email Missing @ sign."
  Display="Dynamic"
  runat="server"
  />
  <br>
  Email: <asp:TextBox id="txtCountryCode" runat="server" />
  <br>
  <asp:RegularExpressionValidator
  ControlToValidate="txtCountryCode"
  ValidationExpression="[0-9]{3}"
  Text="Please enter three digit."
  Display="Dynamic"
  runat="server"
  />
  <br>
  <asp:Button id="btnSubmit" Text="Submit" OnClick="btnSubmitt" runat="server"/>
</form>
<hr>
<h3>Display Label:</h3>
<asp:label id="lbNumber" Text="" runat="server"/>

</body>
</html>

<script language="c#" runat="server">
 
  void btnSubmitt(Object sender,EventArgs e)
  {
      
  }
   
</script>
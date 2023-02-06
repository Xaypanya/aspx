<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Waenkham</title>
  <style>
     .tdTitle {
      text-align: right;
      font-weight: bold;
    }

    .tdBtnL {
      text-align: left;
    }
    .tdBtnR {
      text-align: right;
    }
  
    .required {
      color: #ff3030;
    }

    .btnSubmit , .btnReset {
      margin-top: 10px;
      padding: 3px 10px;
    }

    .btnSubmit {
      background-color: rgb(41, 165, 93);
      border: none;
      border-radius: 7px;
      cursor: pointer;
      color: #fff;
    }

    .btnSubmit:active {
      background-color: rgb(28, 129, 70);
    }

    .btnReset {
      background-color: rgb(41, 165, 93);
      border: none;
      border-radius: 7px;
      cursor: pointer;
      color: #fff;
    }

    .btnReset:active {
      background-color: rgb(28, 129, 70);
    }

    .tdBtn {
      border: 1px solid red;
    }

   
  </style>
</head>
<body>
<form runat="server">
  <table>
  <tr>
    <td class="tdTitle">
      ລະຫັດນັກສຶກສາ: 
    </td>
    <td>
      <asp:TextBox id="txtID" runat="server" />
      <asp:RequiredFieldValidator 
      ControlToValidate="txtID" 
      ErrorMessage="can't not leave blank" 
      SetFocusOnError="True"
      CssClass="required"
      runat="server" />
    </td>
  </tr>
  <tr>
    <td class="tdTitle">ຊື່:</td>
    <td><asp:TextBox id="txtName" runat="server" /></td>
  </tr>
  <tr>
    <td class="tdTitle"> ອາຍຸ:</td>
    <td> 
      <asp:TextBox id="txtAge" runat="server" width="40" />
      <asp:RangeValidator 
      ControlToValidate="txtAge"
      MinimumValue="1"
      MaximumValue="100"
      Type="Integer"
      runat="server"
      CssClass="required"
      Display="Dynamic"
      SetFocusOnError="True"
      ErrorMessage="age must be (1 - 100)"
      EnableClientScript="false" />
    </td>
  </tr>
  <tr>
    <td class="tdTitle">ອີເມວ:</td>
    <td>
      <asp:TextBox id="txtEmail" runat="server" width="170"/>
      <asp:RegularExpressionValidator
      ControlToValidate="txtEmail"
      ValidationExpression=".*@.*\..*"
      SetFocusOnError="True"
      Text="email missing @ or ."
      CssClass="required"
      Display="Dynamic"
      runat="server"/>
    
    </td>
  </tr>
  <tr>
      <td class="tdBtnR">
        <asp:Button   CssClass="btnSubmit" id="btnSubmit" Text="ບັນທຶກ" OnClick="Submitter" runat="server"/>
      </td>
      <td class="tdBtnL">
        <asp:Button CssClass="btnReset" id="btnReset" Text="ຍົກເລີກ" OnClick="Resetter" runat="server"/></td>
      </td>
  </tr>

  </table>
</form>
<hr>
<table>
  <tr>
    <td class="tdTitle">ລະຫັດນັກສຶກສາ:</td>
    <td><asp:label id="lbID" Text="" runat="server"/></td>
  </tr>
  <tr>
    <td class="tdTitle">ຊື່:</td>
    <td><asp:label id="lbName" Text="" runat="server"/></td>
  </tr>
  <tr>
    <td class="tdTitle">ອາຍຸ:</td>
    <td><asp:label id="lbAge" Text="" runat="server"/></td>
  </tr>
  <tr>
    <td class="tdTitle">ອີເມວ:</td>
    <td><asp:label id="lbEmail" Text="" runat="server"/></td>
  </tr>
</table>


</body>
</html>

<script language="c#" runat="server">
 
  void Submitter(Object sender,EventArgs e)
  {
   

      if(Page.IsValid){
        lbID.Text =  txtID.Text;
        lbName.Text =    txtName.Text;
        lbAge.Text =    txtAge.Text;
        lbEmail.Text  =  txtEmail.Text;
      }
  }

  void Resetter(Object sender,EventArgs e)
  {
      txtID.Text = "";
      txtName.Text = "";
      txtAge.Text = "";
      txtEmail.Text = "";
      lbID.Text = "";
      lbName.Text = "";
      lbAge.Text = "";
      lbEmail.Text = "";
     
  }
   
</script>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXUF8NL9IXjBed6bRktqtyZqpsp2ea2xkQzA&usqp=CAU" type="image/x-icon">
  <title>ASP.Net</title>
  <style>
    * {
      font-family: 'Noto Sans Lao';
    }

    .required {
      color: #ff3030;
    }

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
      background-color: rgb(204, 21, 21);
      border: none;
      border-radius: 7px;
      cursor: pointer;
      color: #fff;
    }

    .btnReset:active {
      background-color: rgb(165, 17, 17);
    }

    .tdBtn {
      border: 1px solid red;
    }

    input[type=text] {
      border: 1px solid rgba(139, 136, 136, 0.705);
      border-radius: 5px;
      padding: 3px;
    }

    input[type=text]:focus {
      border: 1px solid rgb(66, 66, 66);
      outline: none;
    }
  </style>
</head>
<body>
<h2>ທ.ໄຊປັນຍາ ພົງສາ</h2>
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
      ErrorMessage="**ຕ້ອງບໍ່ປະຫວ່າງ" 
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
      ErrorMessage="**ຄ່າບໍ່ຖືກຕ້ອງ ອາຍຸຕ້ອງຢູ່ລະຫວ່າງ (1 - 100)"
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
      Text="**ອີເມວບໍ່ຖືກຕ້ອງ ບໍ່ພົບເຄື່ອງໝາຍ @ ຫຼື (.) ຈ້ຳເມັດ"
      CssClass="required"
      Display="Dynamic"
      runat="server"/>
    
    </td>
  </tr>
  <tr>
      <td class="tdBtnR">
        <asp:Button   CssClass="btnSubmit" id="btnSubmit" Text="ບັນທຶກ" OnClick="mySubmit" runat="server"/>
      </td>
      <td class="tdBtnL">
        <asp:Button CssClass="btnReset" id="btnReset" Text="ຍົກເລີກ" OnClick="myReset" runat="server"/></td>
      </td>
  </tr>

  </table>
</form>
<hr>
<h3>ສະແດງຄ່າ:</h3>
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
 
  void mySubmit(Object sender,EventArgs e)
  {
    String id = txtID.Text;
    String name = txtName.Text;
    String age = txtAge.Text;
    String email = txtEmail.Text;

      if(Page.IsValid){
        lbID.Text = id;
      lbName.Text = name;
      lbAge.Text = age;
      lbEmail.Text = email;
      }
  }

  void myReset(Object sender,EventArgs e)
  {
      lbID.Text = "";
      lbName.Text = "";
      lbAge.Text = "";
      lbEmail.Text = "";
      txtID.Text = "";
      txtName.Text = "";
      txtAge.Text = "";
      txtEmail.Text = "";
  }
   
</script>
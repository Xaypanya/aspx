<!DOCTYPE html>
<html lang="en">
<head runat="server">
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="shortcut icon" href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXUF8NL9IXjBed6bRktqtyZqpsp2ea2xkQzA&usqp=CAU" type="image/x-icon">
  <title>Xaypanya</title>
  <link rel="stylesheet" href="font-face.css">
  <style>

    * {
      font-family: 'Noto Sans Lao';
    }

    .Menu {
      margin-bottom: 90px;
    }

    .Menu-container {
      padding-top: 50px;
      padding-right: 145px;
      min-height: 300px;
    }
    .Tree-container {
      padding-right: 140px;
      min-height: 300px;
    }

    .Form-container {
      display: flex;
      justify-content: center;
      align-items: center;
    }
  
  </style>
</head>
<body>
  <h2 align="center">ທ.ໄຊປັນຍາ ພົງສາ</h2>
  <form id="f1" runat="server">
 
  <div class="Form-container">
    <div class="Menu-container">
      <div class="Menu">
        <asp:Menu id="menu1" runat="server">
            <items>
                <asp:MenuItem Text="ຄອມພິວເຕີໂປຣແກຣມມິງ" NavigateUrl="#" Value="ຄອມພິວເຕີໂປຣແກຣມມິງ">
                    <asp:MenuItem Text="ຈາວາ 1" NavigateUrl="#" Value="Java 1"  />
                    <asp:MenuItem Text="ຈາວາ 2" NavigateUrl="#" Value="Java 2"  />
                    <asp:MenuItem Text="C# 1" NavigateUrl="#" Value="C# 1"  />
                    <asp:MenuItem Text="C# 2" NavigateUrl="#" Value="C# 2"  />
                </asp:MenuItem>
            </items>
        </asp:Menu> 
    </div>
    <div class="Menu">
        <asp:Menu id="menu2" runat="server">
            <items>
              <asp:MenuItem Text="ເວບໂປຣແກຣມມິງ" NavigateUrl="#" Value="ເວບເຕີໂປຣແກຣມມິງ">
                <asp:MenuItem Text="ເຈເອສະພີ JSP" NavigateUrl="#" Value="ເຈເອສະພີ JSP"  />
                <asp:MenuItem Text="ພີເອສພີ PHP" NavigateUrl="#" Value="ພີເອສພີ PHP"  />
            </asp:MenuItem>
            </items>
        </asp:Menu> 
    </div>
     </div>
  
      <div class="Tree-container">
        <div class="Tree">
          <asp:TreeView id="tree1" runat="server" showLines="True">
              <nodes>
              <asp:TreeNode Text="ຄອມພິວເຕີໂປຣແກຣມມິງ" NavigateUrl="#" Value="ຄອມພິວເຕີໂປຣແກຣມມິງ">
                  <asp:TreeNode Text="ຈາວາ 1" NavigateUrl="#" Value="ຈາວາ 1"></asp:TreeNode>
                  <asp:TreeNode Text="ຈາວາ 2" NavigateUrl="#" Value="ຈາວາ 2"></asp:TreeNode>
                  <asp:TreeNode Text="C# 1" NavigateUrl="#" Value="C# 1"></asp:TreeNode>
                  <asp:TreeNode Text="C# 2" NavigateUrl="#" Value="C# 2"></asp:TreeNode>
              </asp:TreeNode>
              </nodes>
          </asp:TreeView>
      </div>
  
      <div class="Tree">
          <asp:TreeView id="tree2" runat="server" showLines="True">
              <nodes>
              <asp:TreeNode Text="ເວບໂປຣແກຣມມິງ" NavigateUrl="#" Value="ເວບໂປຣແກຣມມິງ">
                  <asp:TreeNode Text="ເຈເອສະພີ JSP" NavigateUrl="#" Value="ເຈເອສະພີ JSP"></asp:TreeNode>
                  <asp:TreeNode Text="ພີເອສພີ PHP" NavigateUrl="#" Value="ພີເອສພີ PHP"></asp:TreeNode>
              </asp:TreeNode>
              </nodes>
          </asp:TreeView>
      </div>
  
      </div>
  </div>
    
</form>


</body>
</html>





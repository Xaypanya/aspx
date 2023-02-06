<%@ Page Language="C#" Debug="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>
<script language="C#" runat="server">
  private void Page_Load(Object s, EventArgs e){
    if(!Page.IsPostBack){
      showData();
    }
  }

  private void showData(){
    string strCon="Provider=Microsoft.ACE.OLEDB.12.0;DATA Source=D:\\ASP.accdb;User Id=; password=;";
    OleDbConnection myconn = new OleDbConnection(strCon);
    myconn.Open();
    string sql="SELECT * FROM Student";
    DataSet ds = new DataSet();
    OleDbDataAdapter da = new OleDbDataAdapter(sql, myconn);
    da.Fill(ds, "abc");
    myGrid.DataSource = ds;
    myGrid.DataBind();
    myconn.Close();
  }

</script>
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
  </style>
</head>
<body>
  <form id="f1" runat="server">
    <center><h1>TEST MS Access Connection</h1>
    <asp:DataGrid id="myGrid" runat="server"/>
  </center>
  </form>
</body>
</html>
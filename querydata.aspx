<%@ Page Language="C#" Debug="true" %>
<%@ Import NameSpace="System.Data" %>
<%@ Import NameSpace="System.Data.OleDb" %>

<script runat="server">
    private void Page_Load(){
        if(!Page.IsPostBack){
            OleDbConnection myConn;
            OleDbCommand myCommand;
            OleDbDataReader myReader;
            string strConn="Provider=Microsoft.ACE.OLEDB.12.0;DATA Source=D:\\ASP.accdb;User Id=; password=;";

            myConn = new OleDbConnection(strConn);
            myConn.Open();
            string sql = "SELECT MajorName, MajorID FROM Major";
            myCommand = new OleDbCommand(sql, myConn);
            myReader = myCommand.ExecuteReader();

            drpMajor.DataSource = myReader;
            drpMajor.DataTextField="MajorName";
            drpMajor.DataValueField="MajorID";
            drpMajor.DataBind();
            drpMajor.Items.Insert(0, new ListItem("Select Category", -1));

            myReader.Close();
            myConn.Close();
        } //End if
    }// end Page Load

    private void BindMajor(int intMajorID){
            OleDbConnection myConn;
            OleDbCommand myCommand;
            OleDbDataReader myReader;
            string strConn="Provider=Microsoft.ACE.OLEDB.12.0;DATA Source=D:\\ASP.accdb;User Id=; password=;";

            myConn = new OleDbConnection(strConn);
            myConn.Open();
            string sqlQuery="SELECT ID, Name, Surname, Gender FROM Student WHERE MajorID=@majorID";
            myCommand = new OledDbCommand(sqlQuery,myConn);
            myCommand.Parameter.Add(@majorID,intMajorID);
            myReader = myCommand.ExecuteReader();

            rptStudent.DataSource = myReader;
            rptStudent.DataBind();

            myReader.Close();
            myConn.Close();
    }//End BindMajor

    private void drpMajor_Changed(Object s, EventArgs e){
        int intMajorID;
        intMajorID = drpMajor.SelectedItem.Value;
        if(intMajorID != -1){
            BindMajor(intMajorID);
        }
    }//End drpMajor_Changed
</script>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bind Data</title>
</head>
<body>
    <form id="f1" runat="server">
        <asp:DropdownList
         id="drpMajor"
         AutoPostBack="true"
         OnSelectedIndexChanged="drpMajor_Changed"
         runat="server"
         />
         <p>
             <table border="1" cellpadding="0" cellspacing="0" width="500">
                 <asp:Repeater id="rptStudent" EnableViewState="false" runat="server">
                     <ItemTemplate>
                         <tr>
                             <td width="10"><%# Container.DataItem("ID") %></td>
                             <td width="10"><%# Container.DataItem("Name") %></td>
                             <td width="10"><%# Container.DataItem("Surname") %></td>
                             <td width="10"><%# Container.DataItem("Gender") %></td>
                         </tr>
                     </ItemTemplate>
                 </asp:Repeater>
             </table>
         </p>
    </form>
</body>
</html>
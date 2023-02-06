<%@ Page Language="c#" Debug="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server" >
    private void Page_Load(Object s,EventArgs e)
    {
        if(!Page.IsPostBack){
            showData();
        }
    }
    private void showData(){
        string strCon="Provider=Microsoft.ACE.OLEDB.12.0;Data source=D:\\Database3.accdb;"+"User Id=;Password=;";
        OleDbConnection myconn=new OleDbConnection(strCon);
        myconn.Open();
        string sql="SELECT * FROM table1";
        DataSet ds=new DataSet();
        OleDbDataAdapter da=new OleDbDataAdapter(sql,myconn);
        da.Fill(ds,"abc");
        myGrid.DataSource=ds;
        myGrid.DataBind();
        myconn.Close();
    }
    private void DataGrid_Edit(Object s,DataGridCommandEventArgs E){
        myGrid.EditItemIndex=E.Item.ItemIndex;
        showData();
    }
    private void DataGrid_Cancel(Object s,DataGridCommandEventArgs E){
        myGrid.EditItemIndex=-1;
        showData();
    }
    private void DataGrid_Delete(Object s,DataGridCommandEventArgs e){
        int eid;
        eid=(int)myGrid.DataKeys[e.Item.ItemIndex];
        string strCon="Provider=Microsoft.ACE.OLEDB.12.0;Data source=D:\\Database3.accdb;"+"User Id=;Password=;";
        OleDbConnection myconn=new OleDbConnection(strCon);
        myconn.Open();
        string sqlDel="DELETE FROM table1 WHERE ID=@id1";
        OleDbCommand command=new OleDbCommand(sqlDel,myconn);
        command.Parameters.AddWithValue("id1",eid);
        command.ExecuteNonQuery();
        showData();
    }

</script>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form id="form11" runat="server">
        <center>
            <h1>Database connection</h1>
            <asp:DataGrid id="myGrid" runat="server"
            AutogenerateColumns="false" DataKeyField="ID"

            OnEditCommand="DataGrid_Edit"
            OnCancelCommand="DataGrid_Cancel"
            OnDeleteCommand="DataGrid_Delete"
            
            AllowPaging="True"
            PageSize="4"
            PagerStyle-mode="NumericPages"
            HeaderStyle-BackColor="#99cc66"
            AlternatingItemStyle-BackColor="#DAF7A6"
            >
        <columns>
            <asp:EditCommandColumn HeaderText="Edit" Buttontype="LinkButton" CancelText="Cancel" EditText="Edit" UpdateText="Update"/>
        <asp:BoundColumn HeaderText="ລະຫັດ" DataField="ID" ReadOnly="true"/>
        <asp:BoundColumn HeaderText="ຊື່" DataField="name"/>
        <asp:BoundColumn HeaderText="ນາມສະກຸນ" DataField="lname"/>
        <asp:BoundColumn HeaderText="ເພດ" DataField="gender"/>
        <asp:BoundColumn HeaderText="ສາຂາ" DataField="majorID"/>
        <asp:ButtonColumn HeaderText="Delete" Text="Delete" CommandName="Delete"/>
        </columns>
        </asp:DataGrid>
        </center>
    </form>
</body>
</html>
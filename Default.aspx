<%@ Page Language="c#" Debug="true" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.OleDb" %>

<script runat="server">
    private void Page_Load(Object s, EventArgs e)
    {
        if (!Page.IsPostBack) {
            showData();
        }
    }
    private void showData(){
        string strCon = "Provider=Microsoft.ACE.OLEDB.12.0;Data source=D:\\Database3.accdb;" + "User Id=;Password=;";
        OleDbConnection myconn = new OleDbConnection(strCon);
        myconn.Open();
        string sql = "SELECT * FROM table1";
        DataSet ds = new DataSet();
        OleDbDataAdapter da = new OleDbDataAdapter(sql, myconn);
        da.Fill(ds, "abc");
        myGrid.DataSource = ds;
        myGrid.DataBind();
        myconn.Close();
    }
    private void DataGrid_Edit(Object s, DataGridCommandEventArgs E){
        myGrid.EditItemIndex = E.Item.ItemIndex;
        showData();
    }
    private void DataGrid_Cancel(Object s, DataGridCommandEventArgs E){
        myGrid.EditItemIndex = -1;
        showData();
    }
    private void DataGrid_Delete(Object s, DataGridCommandEventArgs e){
        int eid;
        eid = (int)myGrid.DataKeys[e.Item.ItemIndex];
        string strCon = "Provider=Microsoft.ACE.OLEDB.12.0;Data source=D:\\Database3.accdb;" + "User Id=;Password=;";
        OleDbConnection myconn = new OleDbConnection(strCon);
        myconn.Open();
        string sqlDel = "DELETE FROM table1 WHERE ID=@id1";
        OleDbCommand command = new OleDbCommand(sqlDel, myconn);
        command.Parameters.AddWithValue("id1", eid);
        command.ExecuteNonQuery();
        showData();
    }
   
    
    private void DataGrid_Update(Object S, DataGridCommandEventArgs e){
        int nid;

        TextBox txtName, txtSurname, txtGender,
        txtEmail, txtCountry, txtsubFavor, txtMajor;
        nid = (int)myGrid.DataKeys[e.Item.ItemIndex];
        txtName = (TextBox) e.Item.Cells[2].Controls[0];
        txtSurname = (TextBox) e.Item.Cells[3].Controls[0];
        txtGender = (TextBox) e.Item.Cells[4].Controls[0];
        
        txtMajor = (TextBox) e.Item.Cells[5].Controls[0];

        string strCon = "Provider=Microsoft.ACE.OLEDB.12.0;Data source=D:\\Database3.accdb;" + "User Id=;Password=;";
        OleDbConnection myconn = new OleDbConnection(strCon);
        myconn.Open();
        string sqlUpdate = "UPDATE table1 SET name=@ename, lname=@esurname,gender =@egender,majorID =@emajorid WHERE ID =@eid";
        OleDbCommand command = new OleDbCommand(sqlUpdate, myconn);
        command.Parameters.AddWithValue("ename", txtName.Text);
        command.Parameters.AddWithValue("esurname", txtSurname.Text);
        command.Parameters.AddWithValue("egender", txtGender.Text);

        command.Parameters.AddWithValue("emajorid", txtMajor.Text);
        command.Parameters.AddWithValue("eid", nid);
        command.ExecuteNonQuery();

        myGrid.EditItemIndex = -1;
        myconn.Close();
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
            <asp:DataGrid id="myGrid" runat="server" AutogenerateColumns="false" DataKeyField="ID"
                OnEditCommand="DataGrid_Edit" OnCancelCommand="DataGrid_Cancel" OnDeleteCommand="DataGrid_Delete"
                onUpdateCommand="DataGrid_Update" AllowPaging="True" PageSize="4" PagerStyle-mode="NumericPages"
                HeaderStyle-BackColor="#99cc66" AlternatingItemStyle-BackColor="#DAF7A6">
                <columns>
                    <asp:EditCommandColumn HeaderText="Edit" Buttontype="LinkButton" CancelText="Cancel" EditText="Edit"
                        UpdateText="Update" />
                    <asp:BoundColumn HeaderText="ລະຫັດ" DataField="ID" ReadOnly="true" />
                    <asp:BoundColumn HeaderText="ຊື່" DataField="name" />
                    <asp:BoundColumn HeaderText="ນາມສະກຸນ" DataField="lname" />
                    <asp:BoundColumn HeaderText="ເພດ" DataField="gender" />
                    <asp:BoundColumn HeaderText="ສາຂາ" DataField="majorID" />
                    <asp:ButtonColumn HeaderText="Delete" Text="Delete" CommandName="Delete" />
                </columns>
            </asp:DataGrid>
        </center>
    </form>
</body>

</html>
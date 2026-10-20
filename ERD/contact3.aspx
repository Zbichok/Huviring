<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="huviringid_id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="huviringid_id" HeaderText="huviringid_id" InsertVisible="False" ReadOnly="True" SortExpression="huviringid_id" />
                <asp:BoundField DataField="juhendaja_id" HeaderText="juhendaja_id" SortExpression="juhendaja_id" />
                <asp:BoundField DataField="huviringid_huviringid_id" HeaderText="huviringid_huviringid_id" SortExpression="huviringid_huviringid_id" />
                <asp:BoundField DataField="juhendaja_juhendaja_id" HeaderText="juhendaja_juhendaja_id" SortExpression="juhendaja_juhendaja_id" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:huviringConnectionString %>" SelectCommand="SELECT * FROM [Huviring_juhendajaSet]"></asp:SqlDataSource>
    </form>

</body>
</html>
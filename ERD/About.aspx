<%@ Page Title="About" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.vb" Inherits="ERD.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
    </asp:GridView>
        <h2 id="title">
            <asp:TextBox ID="TextBox1" runat="server">Lisa uus huviring</asp:TextBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:huviringConnectionString %>" DeleteCommand="DELETE FROM [huviringidSet] WHERE [huviringid_id] = @huviringid_id" InsertCommand="INSERT INTO [huviringidSet] ([nimetus]) VALUES (@nimetus)" SelectCommand="SELECT * FROM [huviringidSet]" UpdateCommand="UPDATE [huviringidSet] SET [nimetus] = @nimetus WHERE [huviringid_id] = @huviringid_id">
                <DeleteParameters>
                    <asp:Parameter Name="ArveID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Summa" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Summa" Type="String" />
                    <asp:Parameter Name="Kuupaev" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="huviringid_id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
                <Fields>
                    <asp:BoundField DataField="huviringid_id" HeaderText="huviringid_id" InsertVisible="False" ReadOnly="True" SortExpression="huviringid_id" />
                    <asp:BoundField DataField="nimetus" HeaderText="nimetus" SortExpression="nimetus" />
                    <asp:CommandField ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <%: Title %>.</h2>
        <p>Your app description page.</p>
        <p>Use this area to provide additional information.</p>
    </main>
</asp:Content>

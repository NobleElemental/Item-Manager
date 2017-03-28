<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DetailsViewPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Halloween.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Products]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @original_ProductID AND [Name] = @original_Name AND [ShortDescription] = @original_ShortDescription AND [LongDescription] = @original_LongDescription AND [CategoryID] = @original_CategoryID AND (([ImageFile] = @original_ImageFile) OR ([ImageFile] IS NULL AND @original_ImageFile IS NULL)) AND [UnitPrice] = @original_UnitPrice AND [OnHand] = @original_OnHand" InsertCommand="INSERT INTO [Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand]) VALUES (@ProductID, @Name, @ShortDescription, @LongDescription, @CategoryID, @ImageFile, @UnitPrice, @OnHand)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [ShortDescription] = @ShortDescription, [LongDescription] = @LongDescription, [CategoryID] = @CategoryID, [ImageFile] = @ImageFile, [UnitPrice] = @UnitPrice, [OnHand] = @OnHand WHERE [ProductID] = @original_ProductID AND [Name] = @original_Name AND [ShortDescription] = @original_ShortDescription AND [LongDescription] = @original_LongDescription AND [CategoryID] = @original_CategoryID AND (([ImageFile] = @original_ImageFile) OR ([ImageFile] IS NULL AND @original_ImageFile IS NULL)) AND [UnitPrice] = @original_UnitPrice AND [OnHand] = @original_OnHand">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_ShortDescription" Type="String" />
            <asp:Parameter Name="original_LongDescription" Type="String" />
            <asp:Parameter Name="original_CategoryID" Type="String" />
            <asp:Parameter Name="original_ImageFile" Type="String" />
            <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
            <asp:Parameter Name="original_OnHand" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="LongDescription" Type="String" />
            <asp:Parameter Name="CategoryID" Type="String" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="OnHand" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="LongDescription" Type="String" />
            <asp:Parameter Name="CategoryID" Type="String" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="OnHand" Type="Int32" />
            <asp:Parameter Name="original_ProductID" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_ShortDescription" Type="String" />
            <asp:Parameter Name="original_LongDescription" Type="String" />
            <asp:Parameter Name="original_CategoryID" Type="String" />
            <asp:Parameter Name="original_ImageFile" Type="String" />
            <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
            <asp:Parameter Name="original_OnHand" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1230px">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowSelectButton="True" />
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" SortExpression="ShortDescription" />
            <asp:BoundField DataField="LongDescription" HeaderText="LongDescription" SortExpression="LongDescription" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            <asp:BoundField DataField="ImageFile" HeaderText="ImageFile" SortExpression="ImageFile" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:BoundField DataField="OnHand" HeaderText="OnHand" SortExpression="OnHand" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Halloween.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Products] WHERE [ProductID] = @original_ProductID AND [Name] = @original_Name AND [ShortDescription] = @original_ShortDescription AND [LongDescription] = @original_LongDescription AND [CategoryID] = @original_CategoryID AND (([ImageFile] = @original_ImageFile) OR ([ImageFile] IS NULL AND @original_ImageFile IS NULL)) AND [UnitPrice] = @original_UnitPrice AND [OnHand] = @original_OnHand" InsertCommand="INSERT INTO [Products] ([ProductID], [Name], [ShortDescription], [LongDescription], [CategoryID], [ImageFile], [UnitPrice], [OnHand]) VALUES (@ProductID, @Name, @ShortDescription, @LongDescription, @CategoryID, @ImageFile, @UnitPrice, @OnHand)" OldValuesParameterFormatString="original_{0}" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Products] WHERE ([ProductID] = @ProductID)" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [ShortDescription] = @ShortDescription, [LongDescription] = @LongDescription, [CategoryID] = @CategoryID, [ImageFile] = @ImageFile, [UnitPrice] = @UnitPrice, [OnHand] = @OnHand WHERE [ProductID] = @original_ProductID AND [Name] = @original_Name AND [ShortDescription] = @original_ShortDescription AND [LongDescription] = @original_LongDescription AND [CategoryID] = @original_CategoryID AND (([ImageFile] = @original_ImageFile) OR ([ImageFile] IS NULL AND @original_ImageFile IS NULL)) AND [UnitPrice] = @original_UnitPrice AND [OnHand] = @original_OnHand">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_ShortDescription" Type="String" />
            <asp:Parameter Name="original_LongDescription" Type="String" />
            <asp:Parameter Name="original_CategoryID" Type="String" />
            <asp:Parameter Name="original_ImageFile" Type="String" />
            <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
            <asp:Parameter Name="original_OnHand" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="String" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="LongDescription" Type="String" />
            <asp:Parameter Name="CategoryID" Type="String" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="OnHand" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="ProductID" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ShortDescription" Type="String" />
            <asp:Parameter Name="LongDescription" Type="String" />
            <asp:Parameter Name="CategoryID" Type="String" />
            <asp:Parameter Name="ImageFile" Type="String" />
            <asp:Parameter Name="UnitPrice" Type="Decimal" />
            <asp:Parameter Name="OnHand" Type="Int32" />
            <asp:Parameter Name="original_ProductID" Type="String" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_ShortDescription" Type="String" />
            <asp:Parameter Name="original_LongDescription" Type="String" />
            <asp:Parameter Name="original_CategoryID" Type="String" />
            <asp:Parameter Name="original_ImageFile" Type="String" />
            <asp:Parameter Name="original_UnitPrice" Type="Decimal" />
            <asp:Parameter Name="original_OnHand" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="680px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated" CssClass="auto-style1">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="ShortDescription" HeaderText="ShortDescription" SortExpression="ShortDescription" />
            <asp:BoundField DataField="LongDescription" HeaderText="LongDescription" SortExpression="LongDescription" />
            <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
            <asp:BoundField DataField="ImageFile" HeaderText="ImageFile" SortExpression="ImageFile" />
            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" SortExpression="UnitPrice" />
            <asp:TemplateField HeaderText="OnHand" SortExpression="OnHand">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OnHand") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Field is Required" ForeColor="Black" ClientIDMode="AutoID"></asp:RequiredFieldValidator>
                     <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Number must be greater than zero" ForeColor="Black" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("OnHand") %>'></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Field is Required" ForeColor="Black" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                     
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Number must be greater than zero" ForeColor="Black" Operator="GreaterThan" ValueToCompare="0"></asp:CompareValidator>
                      </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="lblOnHand" runat="server" Text='<%# Bind("OnHand") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
</asp:Content>


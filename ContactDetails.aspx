<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactDetails.aspx.cs" Inherits="SIAS.ContactDetails" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" />
          <asp:BoundField DataField="Surname" HeaderText="Surname" />
         <asp:BoundField DataField="Email" HeaderText="Email" />
          <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" />
        <asp:BoundField DataField="Department" HeaderText="Department" />
          <asp:BoundField DataField="Province" HeaderText="Province" />
      
        <asp:TemplateField HeaderText="Actions">
            <ItemTemplate>
                <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" />
            </ItemTemplate>
            <EditItemTemplate>
                <asp:Button ID="btnUpdate" runat="server" Text="Update" CommandName="Update" />
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" />
            </EditItemTemplate>
        </asp:TemplateField>
    </Columns>

</asp:GridView>

    </asp:Content>

<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPages/AdminDashboard.Master" CodeBehind="UserManagement.aspx.cs" Inherits="LearningManagementSystem.Pages.Admin.UserManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
     <style>
        .table1 {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
            border: 1px solid #dee2e6;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 15px;
        }

        .table1 th {
            background-color: #007bff;
            color: white;
            padding: 12px;
            text-align: left;
            border: 1px solid #dee2e6;
        }

        .table1 td {
            padding: 10px;
            border: 1px solid #dee2e6;
        }

        .table1 tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .table1 tr:hover {
            background-color: #e9f5ff;
            transition: background-color 0.3s ease;
        }

        .table1 a {
            text-decoration: none;
            color: #007bff;
            margin-right: 8px;
        }

        .table1 a:hover {
            color: #0056b3;
        }

        input[type="text"], input[type="number"] {
            margin: 5px 0;
            padding: 8px 12px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        #btnAdd {
            margin-top: 10px;
            padding: 8px 16px;
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #btnAdd:hover {
            background-color: #218838;
        }

      </style>
 </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="pnlMsgBox" runat="server">
            </asp:Panel>
         <div class="form_inner">
           <asp:Panel ID="pnlgv" runat="server" Style="min-height: 100px; overflow: auto; margin-top:25px">
             <asp:GridView ID="gvUser" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="EmployeeID"
                    OnRowEditing="GridView1_RowEditing"
                    OnRowCancelingEdit="GridView1_RowCancelingEdit"
                    OnRowUpdating="GridView1_RowUpdating"
                    OnRowDeleting="GridView1_RowDeleting"
                    CellPadding="4" CssClass="table1">
                    <Columns>
                        <asp:BoundField DataField="EmployeeID" HeaderText="ID" ReadOnly="True" />
                        <asp:BoundField DataField="Name" HeaderText="Name" />
                        <asp:BoundField DataField="Position" HeaderText="Position" />
                        <asp:BoundField DataField="Salary" HeaderText="Salary" DataFormatString="{0:C}" />

                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" CommandArgument='<%# Eval("EmployeeID") %>' CssClass="btn btn-warning " />
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("EmployeeID") %>' CssClass="btn btn-danger" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </asp:Panel>
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>


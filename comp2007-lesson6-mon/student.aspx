<%@ Page Title="Student Details" Language="C#" MasterPageFile="~/monday.Master" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="comp2007_lesson6_mon.student" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Student Details</h1>

    <h5>All fields are required</h5>


    <div class="form-group">
        <label for="txtID" class="col-sm-3">Student ID:</label>
        <asp:TextBox ID="TextBox1" runat="server" required="true" MaxLength="50" />
        <asp:RangeValidator runat="server" ControlToValidate="txtID"
             CssClass="label label-danger" ErrorMessage="Must be between 0 and 10,000,000"
         MinimumValue="0" MaximumValue="10000000" Type="Currency" />
    </div>

    <div class="form-group">
        <label for="txtFirst" class="col-sm-3">First Name:</label>
        <asp:TextBox ID="TextBox2" runat="server" required="true" MaxLength="50" />
    </div>


    <div class="form-group">
        <label for="txtLast" class="col-sm-3">Last Name:</label>
        <asp:TextBox ID="txtName" runat="server" required="true" MaxLength="50" />
    </div>
    

    <div class="col-sm-offset-3">
        <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-primary"
             OnClick="btnSave_Click" />
    </div>
</asp:Content>

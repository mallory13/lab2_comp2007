﻿<%@ Page Title="Contoso University - Departments" Language="C#" MasterPageFile="~/monday.Master" AutoEventWireup="true" CodeBehind="students.aspx.cs" Inherits="comp2007_lesson6_mon.students" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Students</h1>

    <a href="student.aspx">Add Student</a>

    <asp:GridView ID="grdStudents" runat="server" CssClass="table table-striped"
        AutoGenerateColumns="false" OnRowDeleting="grdDepartments_RowDeleting"
        DataKeyNames="StudentID">
        <Columns>        
            <asp:BoundField DataField="ID" HeaderText="Student ID" />
            <asp:BoundField DataField="First" HeaderText="First Name" />
            <asp:BoundField DataField="Last" HeaderText="Last Name" />
            <asp:HyperLinkField HeaderText="Edit" NavigateUrl="student.aspx" 
                 Text="Edit" DataNavigateUrlFields="StudentID"
                 DataNavigateUrlFormatString="student.aspx?StudentID={0}" />
            <asp:CommandField DeleteText="Delete" ShowDeleteButton="true" HeaderText="Delete" />
        </Columns>
    </asp:GridView>
</asp:Content>

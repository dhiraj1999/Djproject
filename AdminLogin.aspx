﻿<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="AdminLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       .sign
     {
        
        color:white;
        padding-left:50px;
        margin-top:20px;
     }
     signin:hover
     {
         color:#BA4A00 ;
     }
     .input
     {
         margin-left:30px;
     }
     .form-control
     {
         width:317px;
     }
     .check
     {
         margin-left:30px;
     }
       .signin
     {
         margin-left:30px;
         margin-right:200px;
         border-radius:100px;
         padding:0px 0px 50px 0px;
         width:317px;
     }
      
 </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="sign" style="background-color: #192965; height: 850px;"><br /><br /><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<u>ADMIN SIGN IN</u><br />&nbsp; <br />

    <div class="input">
        <asp:Label ID="lbl1" runat="server" Text="USERID"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtuserid" ForeColor="red"></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtuserid" runat="server" class="form-control" BorderColor="black"></asp:TextBox>
        <br />
        <asp:Label ID="lbl2" runat="server" Text="PASSWORD"></asp:Label>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtpass" ForeColor="red" ></asp:RequiredFieldValidator>
        <asp:TextBox ID="txtpass" runat="server" class="form-control" BorderColor="black" TextMode="Password"></asp:TextBox>
      <br />
    </div>

    <div>
    <asp:CheckBox ID="chk1" Class="check" runat="server" Text=" Keep me Signed in" />
    </div>

    <div class="signin" style="text-align:center;">
    <asp:Button ID="btnsignin" runat="server" Text="SIGN IN" class="form-control" style="background-color:#F39C12" OnClick="btnsignin_Click" /><br />  

     <asp:Button ID="btnback" runat="server" Text="BACK" class="form-control" style="background-color:#F39C12" OnClick="btnback_Click"  /><br />
    </div>
        <asp:Label ID="lbl3" runat="server"></asp:Label>
</div>
</asp:Content>


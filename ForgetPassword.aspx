<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="ForgetPassword.aspx.cs" Inherits="ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .forget
        {
            margin:30px 200px 30px 200px;
            border-radius:10px;
            height:450px;
        }
        .forgetimg
        {
            height:200px;
            width:300px;
           
        }
        .form-control
        {
            margin-left:60px ;
            width:300px;
        } 
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container-fluid" style="background-color:#192965; margin-top:20px; height:810px; ">

    <div class="forget" style="background-color:#edf7fa">
      <div style="text-align: center"><br />
         <img src="Image/forgetpwd.png" class="forgetimg" style="border-radius:10px; border-color:aqua"/>
        <h2><b>Forget Password ?</b></h2>
        <p>You can reset your password here.</p>
      </div>
      <div  style="text-align: center">
          <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red" ControlToValidate="eid" Display = "Dynamic"></asp:RequiredFieldValidator>
         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid Email address" ForeColor="Red" ControlToValidate="eid" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Display = "Dynamic"></asp:RegularExpressionValidator>
        <asp:TextBox ID="eid" runat="server" Class="form-control" placeholder="Enter E-Mail Address"></asp:TextBox><br />
        <asp:Button ID="btn1" runat="server" Class="btn btn-primary" Text="Reset my Password" /> <br/><br />
      </div>
   </div>
</div><br />

</asp:Content>


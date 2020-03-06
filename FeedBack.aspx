<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
         .feedback
         {
             margin-top:20px;
             height:850px;
         }   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="container-fluid feedback" style="background-color: #192965; font-family: Verdana, Geneva, Tahoma, sans-serif; font-size: medium; text-align: center;" >
        <br />
        <h1 style="color:yellow"><u><b>FeedBack From</b></u></h1>
        <br /><br />
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name Can't be blank" ForeColor="Red" ControlToValidate="txtname" Display="Dynamic">*</asp:RequiredFieldValidator>
      <asp:Label ID="lblname" runat="server" Text="Name"  style="color:white"></asp:Label>
        &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtname" runat="server" Width="180px" Height="27px"></asp:TextBox><br /><br />
        </div>
        <div>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Address can't be blank" ForeColor="Red" ControlToValidate="txtadd" Display="Dynamic">*</asp:RequiredFieldValidator>
   <asp:Label ID="lbladd" runat="server" Text="Address"  style="color:white"></asp:Label>
             &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
       <asp:TextBox ID="txtadd" runat="server" Width="180px" Height="27px" TextMode="MultiLine"></asp:TextBox><br />&nbsp;<br />
        </div>
        <div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Class can't be blank" ForeColor="Red" ControlToValidate="txtclass" Display="Dynamic" >*</asp:RequiredFieldValidator>
    <asp:Label ID="lblclass" runat="server" Text="Class"  style="color:white"></asp:Label>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txtclass" runat="server" Width="180px" Height="27px"></asp:TextBox><br /><br />
     </div>
        <div>
    <asp:Label ID="lblyears" runat="server" Text="Years" style="color:white"></asp:Label>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:DropDownList ID="ddyear" runat="server" Width="180px" Height="27px">
                <asp:ListItem>Select Year</asp:ListItem>
                <asp:ListItem>First Year</asp:ListItem>
                <asp:ListItem>Second Year</asp:ListItem>
                <asp:ListItem>Third Year</asp:ListItem>
            </asp:DropDownList>
            <br /><br />
     </div>
        <div>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Country can't be blank" ForeColor="Red" ControlToValidate="txtcountry" Display="Dynamic">*</asp:RequiredFieldValidator>
    <asp:Label ID="lblcountry" runat="server" Text="Country" style="color:white"></asp:Label>
        &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtcountry" runat="server" Width="180px" Height="27px"></asp:TextBox><br /><br />
     </div>
        <div>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="E-mail Can't be blank" ControlToValidate="txtemail" ForeColor="Red">*</asp:RequiredFieldValidator>
     <asp:Label ID="lblemail" runat="server" Text="E-mail Id" style="color:white"></asp:Label>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
    <asp:TextBox ID="txtemail" runat="server" Width="180px" Height="27px" TextMode="Email"></asp:TextBox><br />
      <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid E-mail Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtemail" Display="Dynamic"></asp:RegularExpressionValidator><br />
             </div>
        <div>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator4" ControlToValidate="txtmobile" ForeColor="Red">*</asp:RequiredFieldValidator>
       <asp:Label ID="lblmobile" runat="server" Text="Mobile No"  style="color:white"></asp:Label>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
    <asp:TextBox ID="txtmobile" runat="server" Width="180px" Height="27px"></asp:TextBox><br />
          <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid mobile No" ForeColor="Red" ValidationExpression="[0-9]{10}" ControlToValidate="txtmobile" Display="Dynamic"></asp:RegularExpressionValidator> <br />
    </div>
        <div>
          <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtfeedback" Display="Dynamic">*</asp:RequiredFieldValidator>
       <asp:Label ID="lblfeedback" runat="server" Text="Feedback Details" style="color:white"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtfeedback" runat="server" TextMode="MultiLine" Width="180px" Height="27px"></asp:TextBox><br /><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    </div>
        <div>
    <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnreset" runat="server" Text="Reset" OnClick="btnreset_Click" /><br /><br />
   </div> 
    </div>
</asp:Content>


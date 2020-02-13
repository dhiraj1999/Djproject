<%@ Page Title="" Language="C#" MasterPageFile="~/DashBoard.master" AutoEventWireup="true" CodeFile="BmsSyllabus.aspx.cs" Inherits="BmsSyllabus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        th
        {
            text-align:center;
        }
         h1
         {
             text-align:center;
             font-size:xx-large;
             color:white;
         }
         tr
        {
              color:white;
        }
        a
        {
            color:white;
        }
         .bms
         {
             margin-top: 20px;
         }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-fluid bms" style="background-color:#21243d; font-family: verdana, Geneva, Tahoma, sans-serif;">
        <h1>Download Mumbai University Bachelor of Management Studies (B.M.S.) Syllabus</h1>
        <br />

        <table class="table table-bordered" >
            <thead>
                <tr>
                    <th   colspan="2">MU FIRST YEAR BMS (2016-17) SYLLABUS</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>F.Y.B.M.S. Semester 1 & 2 Choice Based Syllabus  </td>
                    <td><a href="https://drive.google.com/file/d/19rRD-za4ireBsCfUAv9Smw0H-TMuqKme/view?usp=drivesdk">Download</a></td>
                </tr>
                <tr>
                    <td> S.Y.B.M.S. Semester 3 & 4 Choice Based Syllabus </td>
                    <td><a href="https://drive.google.com/file/d/1AjqfzUSAJIUakEJ-7mAjMACYFdIdwqCS/view?usp=drivesdk">Download</a></td>
                </tr>
                <tr>
                    <td> T.Y.B.M.S. Semester 5 & 6 Choice Based Syllabus </td>
                    <td><a href="https://drive.google.com/file/d/1BCuOFVqbNtDZ-CoGJFgxzHffzP8s9Eqc/view?usp=drivesdk">Download</a></td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PullCourse.aspx.cs" Inherits="WebApplication1.PullCourse" %>

<html>
<head>
<meta charset="utf-8">
<title>نموذج سحب مساق  </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
    background-color:#6495ED;
	text-align:center;
     margin:auto;
}	
	
#div1
{
   box-shadow: 5px 10px 50px lightgrey;
   width:1000px;
   margin:auto;
   margin-top:12px;
   background-color:white;
}
#div2
{
   box-shadow: 5px 10px 50px lightgrey;
   margin:left;
   margin-top:12px;
   margin-right: 12px;
   height: 100px;
   background-color:white;
   size:50px;
   text-align:right;
}
.vertical-menu {
    width: 200px;
}

.vertical-menu a {
    background-color:white;
    color: black;
    font-size: 15px;
    display: block;
    padding: 12px;
    text-decoration: none;
    text-align: right;
}

.vertical-menu a:hover {
    background-color: #ccc;
}

.vertical-menu a.active {
    background-color: #4CAF50;
    color: white;
}

				
</style>
</head>

<body>
    <form id="form1" runat="server">
  <div id="div1">


  <div style="background-color: white; font-size: 30px;">
    <h>نموذج سحب مساق </h>
  </div>
  <br>

  <a style="font-size:25px;">السيد الدكتور رئيس قسم 
      <asp:TextBox ID="txtHead" runat="server"></asp:TextBox>
&nbsp;المحترم </a> 
      <br><br><br>
      <table width="100%"  border="1"  class="table5"  >
  <tbody style="float:center;">
   

    <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      <td style="width:270px"> صاحب الرقم الجامعي<asp:TextBox ID="txtNumberStudent" runat="server"></asp:TextBox>
        </td>
      <td style="width:270px">
          <asp:TextBox ID="txtNameStudent" runat="server"></asp:TextBox>
&nbsp;انا الطالب/ة</td>
      
    </tr>
  </tbody>
</table>
<br>
<a style="font-size: 20px; float:right; ">ارجو الموافقة على سحب المساق /المساقات المذكورة ادناه</a>
<br><br>
<table  border="1"  class="table5"  >
  <tbody style="float:right;">
    <tr  class="tr" style="background-color:#09A2BB; color:#FBFBFB; font-size:20px; height:40px; float:right; text-align: center;" >
      <th style="width:240px ;border:hidden" >مدرس المساق</th>
      <th style="width:240px; border:hidden" >موعد المساق</th>
      <th style="width:240px ;border:hidden" >رقم المساق</th>
      <th style="width:240px ;border:hidden" >اسم المساق</th>
      <th style="width:130px ;border:hidden"> الرقم</th>

    </tr>
    <tr>
        <th style="width:270px ; border:hidden" >
            <asp:DropDownList ID="ddlNameTeacherC1" runat="server">
            </asp:DropDownList>
        </th>
      <th style="width:270px; border:hidden" >
          <asp:TextBox ID="txtTimeCourse1" runat="server"></asp:TextBox>
        </th>
      <th style="width:270px; border:hidden" >
          <asp:TextBox ID="txtNumCourse1" runat="server"></asp:TextBox>
        </th>
      <th style="width:270px; border:hidden" >
          <asp:DropDownList ID="ddlNameCourse1" runat="server">
          </asp:DropDownList>
        </th>
      <th style="width:270px; border:hidden"> 1</th>
    </tr>
     <tr>
        <th style="width:270px; border:hidden" >
            <asp:DropDownList ID="ddlNameTeacherC2" runat="server">
            </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:TextBox ID="txtTimeCourse2" runat="server"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:TextBox ID="txtNumCourse2" runat="server"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:DropDownList ID="ddlNameCourse2" runat="server">
          </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden"> 2</th>
    </tr>
     <tr>
        <th style="width:270px; border:hidden" >
            <asp:DropDownList ID="ddlNameTeacherC3" runat="server">
            </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:TextBox ID="txtTimeCourse3" runat="server"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:TextBox ID="txtNumCourse3" runat="server"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:DropDownList ID="ddlNameCourse3" runat="server">
          </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden"> 3</th>
    </tr>
     <tr>
        <th style="width:270px; border:hidden" >
            <asp:DropDownList ID="ddlNameTeacherC4" runat="server">
            </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:TextBox ID="txtTimeCourse4" runat="server"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:TextBox ID="txtNumCourse4" runat="server"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:DropDownList ID="ddlNameCourse4" runat="server">
          </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden"> 4</th>
    </tr>
     <tr>
        <th style="width:270px; border:hidden" >
            <asp:DropDownList ID="ddlNameTeacherC5" runat="server">
            </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:TextBox ID="txtTimeCourse5" runat="server"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:TextBox ID="txtNumCourse5" runat="server"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden" >
          <asp:DropDownList ID="ddlNameCourse5" runat="server">
          </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden"> 5</th>
    </tr>
  </tbody>
</table>
<br>
     <a style="font-size: 25px; float: right;  padding-right: 20px; "> 
      <asp:TextBox ID="txtNmberHours" runat="server"></asp:TextBox>
&nbsp;عدد الساعات المسجلة </a>
     <a style="font-size: 25px; float: right; padding-right: 20px; "> 
      <asp:TextBox ID="txtNumHourAfter" runat="server"></asp:TextBox>
&nbsp;عدد الساعات بعد السحب  </a>
     <br><br>
     <a style="font-size: 25px; text-align: right;float:right; padding-right: 20px;">وذلك للاسباب التاليه</a>
     <br>
     &nbsp;<asp:TextBox ID="txtReason" runat="server"></asp:TextBox>
     <br>
     <br>
     </form>




 

</body>
</html>
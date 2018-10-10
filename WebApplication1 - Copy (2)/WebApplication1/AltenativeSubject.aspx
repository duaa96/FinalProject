<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltenativeSubject.aspx.cs" Inherits="WebApplication1.AltenativeSubject" %>

<html>
<head>
<meta charset="utf-8">
<title>نموذج تسجيل مساق بديل للتخرج </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
    background-color:#6495ED;
	text-align:right;
     margin:auto;
}	
	
#div1
{
   box-shadow: 5px 10px 50px lightgrey;
   width:1120px;
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
   background-color:yellow;
   size:50px;
   text-align:right;
}


.vertical-menu a:hover {
    background-color: #ccc;
}

.vertical-menu a.active {
    background-color: #4CAF50;
    color: white;
}

				
    .auto-style1 {
        width: 255px;
        height: 50px;
    }
    .auto-style2 {
        width: 280px;
        height: 50px;
    }
    .auto-style3 {
        width: 265px;
        height: 50px;
    }
    .auto-style4 {
        width: 290px;
        height: 50px;
    }
    .auto-style5 {
        margin-left: 0px;
    }

				
</style>
</head>

<body>
  <div id="div1">


      <form id="form1" runat="server">
   <br>
  <br>
 
  <div style="background-color: white; font-size: 30px; text-align:center;">
 
    <h>نموذج تسجيل مساق بديل للتخرج</h>
  </div>
  

  <h3 style="text-align:center;" >نموذج رقم 16</h3> 

  <div align="center">
    &nbsp;<h  style="text-align:center; font-size: 20px;">كلية</h>&nbsp;<asp:Label ID="labCollage" runat="server" Text="Label"></asp:Label>
          </div>
      <br><br>
      <table width="95%"  border="1"  class="table5" align="center"  >
  <tbody style="float:center;">
   

    <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      <td style="width:270px"> الرقم الجامعي<asp:Label ID="labNumStudent" runat="server" Text="Label"></asp:Label>
        </td>
      <td style="width:270px">&nbsp;اسم الطالب<asp:Label ID="labNameStudent" runat="server" Text="Label"></asp:Label>
        </td>
      
    </tr>
    <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      <td style="width:270px"> التخصص<asp:Label ID="labMager" runat="server" Text="Label"></asp:Label>
        </td>
      <td style="width:270px;border:hidden">&nbsp;القسم&nbsp;<asp:Label ID="labSection" runat="server" Text="Label"></asp:Label>
        </td>
      
    </tr>
  </tbody>
</table>
<br>



<table     width="80%" border="1"    align="right" style=" align-items: flex-end"  >

  <tbody style="float:right;">
    
      
      

    <tr  class="tr" style="background-color:#09A2BB; color:#FBFBFB; font-size:18px; float:right; text-align: right; padding-right:0px;  align-items:center" >
    	<th class="auto-style1" > الساعات المعتمدة للبديل  </th> 
    	<th class="auto-style1" > رقم المساق البديل</th>
      <th class="auto-style2" > اسم المساق البديل</th>
      <th class="auto-style3" > الساعات المعتمدة للاصيل</th>
      <th class="auto-style3" > نوع المساق الاصيل</th>
      <th class="auto-style1" >رقم المساق الاصيل</th>
      <th class="auto-style4"> اسم المساق الاصيل</th>

    </tr>
    <tr>
        <th style="width:200px" >
            <asp:TextBox ID="txtAlternativeHoursC1" runat="server"></asp:TextBox>
        </th>
      <th style="width:200px" >
          <asp:TextBox ID="txtAlternativeNum1C1" runat="server" ></asp:TextBox>
        </th>
      <th style="width:200px" >
          <asp:DropDownList ID="ddlAlternativeCourse1" runat="server" OnSelectedIndexChanged="ddlAlternativeCourse1_SelectedIndexChanged" AutoPostBack="true">
          </asp:DropDownList>
        </th>
      <th style="width:200px" >
          <asp:TextBox ID="txtNumHoursC1" runat="server"></asp:TextBox>
        </th>
      <th style="width:200px" >
          <asp:DropDownList ID="ddlTypeCourse1" runat="server">
          </asp:DropDownList>
        </th>
      <th style="width:200px" >
          <asp:TextBox ID="txtNumberCourse1" runat="server"></asp:TextBox>
        </th>
      <th style="width:200px" >
          <asp:DropDownList ID="ddlCourse1" runat="server" OnSelectedIndexChanged="ddlCourse1_SelectedIndexChanged" AutoPostBack="true">
          </asp:DropDownList>
        </th>
      
    </tr>
     <tr>
        <th style="width:270px" >
            &nbsp;</th>
      <th style="width:270px" >
          &nbsp;</th>
      <th style="width:270px" >
          &nbsp;</th>
      <th style="width:270px" >
          &nbsp;</th>
      <th style="width:270px" >
          &nbsp;</th>
      <th style="width:270px" >
          &nbsp;</th>
      <th style="width:270px" >
          &nbsp;</th>
      
    </tr>
     
  </tbody>
</table>
<br>
    
     <a style="font-size: 25px; text-align: right;">التفسير</a>
     <br>
          <asp:TextBox ID="txtReason" runat="server" CssClass="auto-style5" Height="53px"></asp:TextBox>
&nbsp;<br>
     <br>
     <table style="width: 100%; padding-right:20px; padding-left:20px;" border="1"  >
  <tbody style=" width: 100% ; background-color:#F0F0F0;">

</tbody>
         <asp:FileUpload ID="fuSignature" runat="server" />
</table>


          <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
      </form>




 

    </div>
    




 

</body>
</html>

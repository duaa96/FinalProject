<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dropsemester.aspx.cs" Inherits="WebApplication1.Dropsemester" %>

<html>
<head>
<meta charset="utf-8">
<title>نموذج سحب فصل دراسي</title>
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
  <div id="div1">


      <form id="form1" runat="server">
  
 <br>
 <br>
 
  <div style="background-color: white; font-size: 30px;">
    <h>نموذج سحب فصل دراسي</h>
  </div>
 
 <h3 style="text-align:center;" >نموذج رقم 20</h3> 

  <div align="center">
    &nbsp;<h  style="text-align:center; font-size: 20px;align-items: center;">كلية</h><div align="center">
          <asp:DropDownList ID="ddlCollages" runat="server">
          </asp:DropDownList>
&nbsp;</div>
      &nbsp;</div>
      <br>
      <table width="90%"  border="1"  class="table5" align="center"  >
  <tbody style="float:center;">
   
 <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      
      <td style="width:270px ">&nbsp;من العام الجامعي<asp:DropDownList ID="DropDownList2" runat="server">
          <asp:ListItem>2017/2018</asp:ListItem>
          <asp:ListItem>2018/2019</asp:ListItem>
          <asp:ListItem>2019/2020</asp:ListItem>
          </asp:DropDownList>
      </td>
      <td style="width:270px"> الفصل الدراسي<asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem>الأول</asp:ListItem>
          <asp:ListItem>الثاني</asp:ListItem>
          <asp:ListItem>الصيفي</asp:ListItem>
          </asp:DropDownList>
      </td>
    </tr>
  
  
  </tbody>
</table>
<br>


 <br><br>
 
     <table width="95%"  border="1"  class="table5" align="center"  >
  <tbody style="float:center;">
   
 <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
       <td style="width:270px ">&nbsp;قسم<asp:DropDownList ID="ddlSection" runat="server">
           </asp:DropDownList>
       </td>
      <td style="width:270px "><input type="text" name="name" size="20px" style="text-align:right;border:hidden" id="txtNumUniversity" > الرقم الجامعي</td>
       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      <td style="width:270px; direction: rtl;"> &nbsp;اسم الطالب<input type="text" name="" size="20px" style="text-align:right;border:hidden ; margin-right:102px" id="txtName"></td>
    </tr>
  <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
       <td style="width:270px ">&nbsp;</td>
      <td style="width:270px ">&nbsp;</td>
      <td style="width:300px"> <input type="text" name="" size="20px" style="text-align:right;border:hidden" id="txtNumHours">عدد الساعات المعتمدة المسجلة </td>
    </tr>
    
  
  </tbody>
</table>  
      
      
      <br>
<a style="font-size: 20px; float:right; ">المساقات التي سجلتها هي</a>
<br><br>
<table  width="95%" border="1"  class="table5" align="center"  >
  <tbody style="float:right;">
    <tr  class="tr" style=" width:100%; background-color:#09A2BB; color:#FBFBFB; font-size:20px; height:40px; float:right; text-align: center;" >
      
      <th style="width:240px ;border:hidden" >رقم المساق</th>
      <th style="width:300px ;border:hidden" > المساق</th>
      <th style="width:250px ;border:hidden"> الرقم</th>

    </tr>
    <tr>
        
      <th style="width:270px; border:hidden ; text-align:right" >
          <asp:TextBox ID="txtNumCourse1" runat="server"></asp:TextBox>
        </th>
      <th style="width:270px; border:hidden ; text-align:right" >
          <asp:DropDownList ID="ddlcourse1" runat="server">
          </asp:DropDownList>
        </th>
      <th style="width:270px; border:hidden ; text-align:right"> 1</th>
    </tr>
     <tr>
        
      <th style="width:270px; border:hidden ; text-align:right" >
          <asp:TextBox ID="txtNumCourse2" runat="server" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden ; text-align:right" >
          <asp:DropDownList ID="ddlcourse2" runat="server">
          </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden ; text-align:right"> 2</th>
    </tr>
     <tr>
       
      <th style="width:270px; border:hidden ; text-align:right" >
          <asp:TextBox ID="txtNumCourse3" runat="server"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden ; text-align:right" >
          <asp:DropDownList ID="ddlcourse3" runat="server">
          </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden ; text-align:right"> 3</th>
    </tr>
     <tr>
       
      <th style="width:270px; border:hidden ; text-align:right" >
          <asp:TextBox ID="txtNumCourse4" runat="server"></asp:TextBox>
         </th>
      <th style="width:270px; border:hidden ; text-align:right" >
          <asp:DropDownList ID="ddlcourse4" runat="server" OnSelectedIndexChanged="DropDownList7_SelectedIndexChanged">
          </asp:DropDownList>
         </th>
      <th style="width:270px; border:hidden ; text-align:right"> 4</th>
    </tr>
    <tr>
       
      <th style="width:270px; border:hidden ; text-align:right" >
          <asp:TextBox ID="txtNumCourse5" runat="server" OnTextChanged="TextBox6_TextChanged"></asp:TextBox>
        </th>
      <th style="width:270px; border:hidden ; text-align:right" >
          <asp:DropDownList ID="ddlcourse5" runat="server" OnSelectedIndexChanged="DropDownList8_SelectedIndexChanged">
          </asp:DropDownList>
        </th>
      <th style="width:270px; border:hidden; text-align:right"> 5</th>
    </tr>
     
  </tbody>
</table>
<br>
     
     
     <a style="font-size: 25px; text-align: right;float:right; padding-right: 20px;">ارغب في سحب الفصل المشار اليه اعلاه بسبب</a>
     <br>
     <input style="width: 95%; height: 50px; text-align:right" type="text" name="name" id="txtReasons" >
     <br>
     
     <br>
     <table width="90%"  border="1"  class="table5" align="center"  >
  <tbody style="float:center;">
   <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      
      <td style="width:270px ">&nbsp;</td>
      <td style="width:270px"> توقيع الطالب<asp:FileUpload ID="fuSignature" runat="server" />
       </td>
    </tr>
     <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      
      <td style="width:270px ">&nbsp;</td>
      <td style="width:270px"> &nbsp;</td>
    </tr>
     <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      
      <td style="width:270px ">&nbsp;</td>
      <td style="width:270px"> &nbsp;</td>
    </tr>
     <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      
      <td style="width:270px ">&nbsp;</td>
      <td style="width:270px"> &nbsp;</td>
    </tr>
   
 <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      
      <td style="width:270px ">&nbsp;</td>
      <td style="width:270px"> &nbsp;</td>
    </tr>
  
  
  </tbody>
</table>
      
     <br>
          <asp:Button ID="btnSend" runat="server" OnClick="Button1_Click" Text="ارسال" />
     <br>
     <a style="font-size: 25px; text-align: right;float:right; padding-right: 20px;">ملاحظات دائرة القبول والتسجيل</a>
     <br>
     <input style="width: 95%; height: 50px; text-align:right" type="text" name="name" >
     <br>
     
     <br>
<br>
<br>

      </form>




 
</div>
</body>
</html>


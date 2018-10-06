<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowStates.aspx.cs" Inherits="WebApplication1.ShowStates" %>

<html>
<head>
<meta charset="utf-8">
<title>نموذج عرض حال</title>
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
    <h>نموذج عرض حال</h>
  </div>
  

  <h3 style="text-align:center;" >نموذج رقم 27</h3> 

  <div align="center">
    &nbsp;<h  style="text-align:center; font-size: 20px;align-items: center;">كلية</h><div align="center">
    &nbsp;<h  style="text-align:center; font-size: 20px;align-items: center;">كلية</h>
          <asp:DropDownList ID="ddlCollage" runat="server">
          </asp:DropDownList>
      </div>
      &nbsp;</div>
      <br>
      <table width="90%"  border="1"  class="table5" align="center"  >
  <tbody style="float:center;">
   
 <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      
      <td style="width:270px ">&nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
          <asp:ListItem>2018/2019</asp:ListItem>
          <asp:ListItem>2019/2018</asp:ListItem>
          </asp:DropDownList>
          من العام الجامعي</td>
      <td style="width:270px"> الفصل الدراسي<asp:DropDownList ID="DropDownList1" runat="server">
          <asp:ListItem>الاول</asp:ListItem>
          <asp:ListItem>الثاني</asp:ListItem>
          <asp:ListItem>الصيفي</asp:ListItem>
          </asp:DropDownList>
      </td>
    </tr>
    <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      <td style="width:270px"> الرقم الجامعي<asp:TextBox ID="txtNumberStudent" runat="server"></asp:TextBox>
        </td>
      <td style="width:270px">&nbsp;اسم الطالب<asp:TextBox ID="txtNameStudent" runat="server"></asp:TextBox>
        </td>
      
    </tr>
    <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      <td style="width:270px"> التخصص<asp:TextBox ID="txtSpecialty" runat="server"></asp:TextBox>
        </td>
      <td style="width:270px">&nbsp;القسم   
          <asp:TextBox ID="txtSectionStudent" runat="server"></asp:TextBox>
        </td>
      
    </tr>
  </tbody>
</table>
<br>


    
     <h4 style="padding-right: 50px; margin-bottom: 0; ">تحية طيبة وبعد</h4>
     <a style="font-size: 25px; text-align: right; font:bold; padding-right: 50px;">الموضوع</a>
     <br>
     &nbsp;<br>
          <asp:TextBox ID="txtStatus" runat="server" CssClass="auto-style1" Height="200px" Width="500px"></asp:TextBox>
     <br>
     

 <table width="90%"  border="1"  class="table5" align="center"  >
  <tbody style="float:center;">
   
 <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      
      <td style="width:270px">&nbsp;توقيع الطالب<asp:FileUpload ID="fuSignatureStudent" runat="server" />
      </td>
      <td style="width:270px"> التاريخ<asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
      </td>
    </tr>
    <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      <td style="width:270px"> &nbsp;</td>
      <td style="width:270px">&nbsp;</td>
      
    </tr>
    <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      <td style="width:270px"> &nbsp;</td>
      <td style="width:270px">&nbsp;</td>
      
    </tr>
  </tbody>
</table>

<br>
<br>


      </form>




 

</body>
</html>

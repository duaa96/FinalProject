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
          <asp:Label ID="labCollage" runat="server" Text="Label"></asp:Label>
&nbsp;</div>
      &nbsp;</div>
      <br>
      <table width="90%"  border="1"  class="table5" align="center"  >
  <tbody style="float:center;">
   
 <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
      
      <td style="width:270px ">&nbsp;من العام الجامعي<asp:Label ID="labYear" runat="server" Text="Label"></asp:Label>
      </td>
      <td style="width:270px"> الفصل الدراسي<asp:Label ID="labSemester" runat="server" Text="Label"></asp:Label>
      </td>
    </tr>
  
  
  </tbody>
</table>
<br>


 <br><br>
 
     <table width="95%"  border="1"  class="table5" align="center"  >
  <tbody style="float:center;">
   
 <tr  style="font-size:18px; height:40px;  background-color:#F0F0F0;">
       <td style="width:270px ">&nbsp;قسم<asp:Label ID="labSection" runat="server" Text="Label"></asp:Label>
       </td>
      <td style="width:270px ">&nbsp;الرقم الجامعي<asp:Label ID="labNumStudent" runat="server" Text="Label"></asp:Label>
       </td>
       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      <td style="width:270px; direction: rtl;"> &nbsp;اسم الطالب<asp:Label ID="labNameStudent" runat="server"></asp:Label>
       </td>
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
         



              <asp:GridView ID="gvCourses" runat="server" AutoGenerateColumns="False" DataKeyNames="SubjectID" Width="100%" CellPadding="4" ForeColor="#1A7BB9" GridLines="None">
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="SubjectName" HeaderText="Subject Name" SortExpression="SubjectName" />
                                        <asp:BoundField DataField="SubjectID" HeaderText="Subject ID" SortExpression="SubjectID" />
                                        

                                        <asp:TemplateField ShowHeader="False">
                                            <EditItemTemplate>
                                            </EditItemTemplate>
                                            <ItemStyle Width="24px" />
                                           
                                        </asp:TemplateField>
                                           
                                    </Columns>
                                    <EditRowStyle BackColor="#2461BF" />
                                    <EmptyDataTemplate>
                                        <asp:Label ID="lblNoUser" runat="server" Font-Bold="True" ForeColor="Red">لا يوجد مواد مسجلة للطالب  </asp:Label>
                                    </EmptyDataTemplate>
                                    <FooterStyle BackColor="#1A7BB9" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#1A7BB9" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                                </asp:GridView>








<br>
     
     
     <a style="font-size: 25px; text-align: right;float:right; padding-right: 20px;">ارغب في سحب الفصل المشار اليه اعلاه بسبب</a>
     <br>
     &nbsp;<br>
     
          <asp:TextBox ID="txtReasons" runat="server"></asp:TextBox>
     
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
     &nbsp;<br>
     &nbsp;<br>
     
     <br>
<br>
<br>

      </form>




 
</div>
</body>
</html>


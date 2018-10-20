<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AbsenceEmp.aspx.cs" Inherits="WebApplication1.AbsenceEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:GridView ID="gvAbsenceExam" runat="server" AutoGenerateColumns="False" CellPadding="4"  DataKeyNames="ID" ForeColor="#1A7BB9" OnRowCommand="gvAbsenceExam_RowCommand" GridLines="None"  Width="100%" >
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                    <asp:BoundField DataField="StudentID" HeaderText="رقم الطالب" SortExpression="StudentID" />
                <asp:BoundField DataField="Subject1" HeaderText="رقم المادةالاولى" SortExpression="Subject1" />
                <asp:BoundField DataField="SubjectName" HeaderText="اسم المادة الاولى" SortExpression="SubjectName" />
                <asp:BoundField DataField="Date1" HeaderText=" التاريخ" SortExpression="Date1" />
                <asp:BoundField DataField="Subject2" HeaderText="رقم المادةالثانية" SortExpression="Subject2" />
                <asp:BoundField DataField="SubjectName" HeaderText="اسم المادةالثانية" SortExpression="SubjectName" />
                <asp:BoundField DataField="Date2" HeaderText=" التاريخ" SortExpression="Date2" />
                 <asp:BoundField DataField="Subject3" HeaderText="رقم المادةالثالثة" SortExpression="Subject3" />
                <asp:BoundField DataField="SubjectName" HeaderText="اسم المادةالثالثة" SortExpression="SubjectName" />
                <asp:BoundField DataField="Date3" HeaderText=" التاريخ" SortExpression="Date3" />
                   <asp:BoundField DataField="Subject4" HeaderText="رقم المادةالرابعة" SortExpression="Subject4" />
                <asp:BoundField DataField="SubjectName" HeaderText="اسم المادةالرابعة" SortExpression="SubjectName" />
                <asp:BoundField DataField="Date4" HeaderText=" التاريخ" SortExpression="Date4" />
                <asp:BoundField DataField="Description" HeaderText=" الملاحظات" SortExpression="Description" />
               
                 <asp:TemplateField> 
        <ItemTemplate>
            <asp:LinkButton ID="lnkDownload" Text=" الملف المرفق الاول" CommandArgument='<%#   Eval("Attachment1") %>' runat="server" OnClick = "lnkDownload_Click" ></asp:LinkButton>
            <asp:LinkButton ID="LinkButton1" Text=" الملف المرفق الثاني" CommandArgument='<%#   Eval("Attachment2") %>' runat="server" OnClick = "lnkDownload2_Click" ></asp:LinkButton>

</ItemTemplate>
    </asp:TemplateField>
                     <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                   <asp:Button ID="btnedit" runat="server" Text="موافق" CommandName="Agree" CommandArgument='<%# DataBinder.Eval(Container, "RowIndex") %>'/>
                </ItemTemplate>          
             </asp:TemplateField> 
                 <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                   <asp:Button ID="btnedit1" runat="server" Text="لا اوافق" CommandName="NotAgree" CommandArgument='<%# DataBinder.Eval(Container, "RowIndex") %>'/>
                </ItemTemplate>          
             </asp:TemplateField> 
           

               <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                    </EditItemTemplate>
                    <ItemStyle Width="24px" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <EmptyDataTemplate>
                <asp:Label ID="lblNoUser" runat="server" Font-Bold="True" ForeColor="Red">  لا يوجد طلبات غير موافق عليها  </asp:Label>
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




        </div>
    </form>
</body>
</html>

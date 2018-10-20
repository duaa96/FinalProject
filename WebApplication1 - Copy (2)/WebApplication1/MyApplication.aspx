<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyApplication.aspx.cs" Inherits="WebApplication1.MyApplication" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p align="center"> ابحث عن طلبك  </p>
            <br/>

            <asp:DropDownList ID="ddlMyApplication" runat="server" ></asp:DropDownList>


            <br/>
            <asp:Button ID="btnSearch" runat="server" Text="ابحث " OnClick="btnSearch_Click" />

        </div>
        <asp:GridView ID="gvAbsenceExam" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ID" ForeColor="#1A7BB9" GridLines="None"  Width="100%">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
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
                <asp:BoundField DataField="Attachment1" HeaderText=" الملف المرفق" SortExpression="Attachment1" />
                <asp:BoundField DataField="Attachment2" HeaderText=" الملف المرفق" SortExpression="Attachment12" />

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
        <br/>
                                   
        <br />
        <asp:GridView ID="gvDropSemester" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" Width="100%" CellPadding="4" ForeColor="#1A7BB9" GridLines="None" >
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Description" HeaderText="اسباب سحب الفصل" SortExpression="Description" />
                                        <asp:BoundField DataField="Date" HeaderText="التاريخ" SortExpression="Date" />
                                        <asp:BoundField DataField="AcademicAdvisorAccept" HeaderText="قرار المرشد الأكاديمي" SortExpression="AcademicAdvisorAccept" />
                                          <asp:BoundField DataField="AcademicAdvisor_Descr" HeaderText="ملاحظات المرشد الاكاديمي " SortExpression="AcademicAdvisor_Descr" />
                                        <asp:BoundField DataField="AcademicAdvisorAccept" HeaderText="قرار رئيس القسم" SortExpression="AcademicAdvisorAccept" />
                                          <asp:BoundField DataField="AcademicAdvisor_Descr" HeaderText="ملاحظات رئيس القسم " SortExpression="AcademicAdvisor_Descr" />
                                         <asp:BoundField DataField="DeanAccept" HeaderText="قرار العميد" SortExpression="DeanAccept" />
                                        <asp:BoundField DataField="DeanDescription" HeaderText="ملاحظات العميد" SortExpression="DeanDescription" />
                                         <asp:BoundField DataField="DeputyAcademicAccept" HeaderText="قرار المرشد الأكاديمي" SortExpression="DeputyAcademicAccept" />
                                         <asp:BoundField DataField="DeputyAcademic_Descr" HeaderText="ملاحظات المرشد الأكاديمي" SortExpression="DeputyAcademic_Descr" />
                                        <asp:BoundField DataField="RegestrationDescr" HeaderText="قرار دائرة القبول و التسجيل" SortExpression="RegestrationDescr" />
                                      
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
        <br />
        <asp:GridView ID="gvAlternativeSubject" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" Width="100%" CellPadding="4" ForeColor="#1A7BB9" GridLines="None" >
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Subject1ID" HeaderText="رقم المادة" SortExpression="Subject1ID" />
                                        <asp:BoundField DataField="SubjectName" HeaderText="اسم المادة" SortExpression="SubjectName" />
                                        <asp:BoundField DataField="Subject2Type" HeaderText="نوع المادة" SortExpression="Subject2Type" />
                                        <asp:BoundField DataField="NewSubject" HeaderText="المادة البديلة" SortExpression="NewSubject" />
                                        <asp:BoundField DataField="Description" HeaderText="الملاحظات" SortExpression="Description" />
                                        <asp:BoundField DataField="AcademicAdvisorAccept" HeaderText="قرار المرشد الاكاديمي" SortExpression="AcademicAdvisorAccept" />
                                        <asp:BoundField DataField="HeadAccept" HeaderText="قرار رئيس القسم" SortExpression="HeadAccept" />
                                        <asp:BoundField DataField="DeanAccept" HeaderText="قرار العميد" SortExpression="DeputyAcademic" />
                                        <asp:BoundField DataField="RegestrationAccept" HeaderText="قرار دائرة القبول والتسجيل" SortExpression="RegestrationAccept" />
                                        


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
        <br />
        <asp:GridView ID="gvShowStatus" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" Width="100%" CellPadding="4" ForeColor="#1A7BB9" GridLines="None" >
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="Date" HeaderText="التاريخ" SortExpression="Date" />
                                        <asp:BoundField DataField="Description" HeaderText="وصف الحال" SortExpression="Description" />
                                        <asp:BoundField DataField="HeadDescription" HeaderText="ملاحظات رئيس القسم" SortExpression="HeadDescription" />
                                        <asp:BoundField DataField="HeadAccept" HeaderText="قرار رئيس القسم" SortExpression="HeadAccept" />
                                          <asp:BoundField DataField="HeadDate" HeaderText="التاريخ" SortExpression="HeadDate" />
                                        <asp:BoundField DataField="DeanDescription" HeaderText="ملاحظات العميد" SortExpression="DeanDescription" />
                                         <asp:BoundField DataField="DeanAccept" HeaderText="قرار العميد" SortExpression="DeanAccept" />
                                        <asp:BoundField DataField="DeanDate" HeaderText="التاريخ" SortExpression="DeanDate" />
                                         

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

            <asp:GridView ID="gvPullCourse" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" Width="100%" CellPadding="4" ForeColor="#1A7BB9" GridLines="None" >
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                      
                                        <asp:BoundField DataField="Subject1ID" HeaderText="المادة الاولى" SortExpression="Subject1ID" />
                                        <asp:BoundField DataField="SubjectName" HeaderText="اسم المادة" SortExpression="SubjectName" />
                                        <asp:BoundField DataField="Subject2ID" HeaderText="المادة الثانية" SortExpression="Subject2ID" />
                                       <asp:BoundField DataField="SubjectName" HeaderText="اسم المادة" SortExpression="SubjectName" />
                                        <asp:BoundField DataField="Subject3ID" HeaderText="المادة الثالثة" SortExpression="Subject3ID" />
                                        <asp:BoundField DataField="SubjectName" HeaderText="اسم المادة" SortExpression="SubjectName" />
                                        <asp:BoundField DataField="Date" HeaderText="التاريخ" SortExpression="Date" />
                                          <asp:BoundField DataField="Description" HeaderText="الملاحظات" SortExpression="Description" />
                                        <asp:BoundField DataField="HeadDescription" HeaderText="ملاحظات رئيس القسم" SortExpression="HeadDescription" />
                                         <asp:BoundField DataField="HeadAccept" HeaderText="قراررئيس القسم" SortExpression="HeadAccept" />
                                        <asp:BoundField DataField="HeadDate" HeaderText="التاريخ" SortExpression="HeadDate" />
                                          <asp:BoundField DataField="DeanDescription" HeaderText="ملاحظات العميد" SortExpression="DeanDescription" />
                                        <asp:BoundField DataField="DeanAccept" HeaderText="قرار العميد" SortExpression="DeanAccept" />
                                        <asp:BoundField DataField="RegestrationAccept" HeaderText="قرار التسجيل" SortExpression="RegestrationAccept" />

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
    </form>
    
</body>
</html>

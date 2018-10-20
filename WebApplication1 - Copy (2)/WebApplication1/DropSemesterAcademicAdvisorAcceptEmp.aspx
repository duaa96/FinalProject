<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropSemesterAcademicAdvisorAcceptEmp.aspx.cs" Inherits="WebApplication1.DropSemesterAcademicAdvisorAcceptEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <asp:GridView ID="gvDropSemester" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" OnRowCommand="gvDropSemester_RowCommand" Width="100%" CellPadding="4" ForeColor="#1A7BB9" GridLines="None" >
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="StudentID" HeaderText="رقم الطالب" SortExpression="StudentID" />
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
                                        <asp:Label ID="lblNoUser" runat="server" Font-Bold="True" ForeColor="Red">لا يوجد طلبات غير موافق عليها </asp:Label>
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

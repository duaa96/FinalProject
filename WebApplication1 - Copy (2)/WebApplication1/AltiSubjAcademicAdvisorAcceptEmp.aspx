<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AltiSubjAcademicAdvisorAcceptEmp.aspx.cs" Inherits="WebApplication1.AltiSubjAcademicAdvisorAcceptEmp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:GridView ID="gvAlternativeSubject" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" OnRowCommand="gvAlternativeSubject_RowCommand"  Width="100%" CellPadding="4" ForeColor="#1A7BB9" GridLines="None" >
                                    <AlternatingRowStyle BackColor="White" />
                                    <Columns>
                                        <asp:BoundField DataField="StudentID" HeaderText="رقم الطالب" SortExpression="StudentID" />

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

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeStudent.aspx.cs" Inherits="WebApplication1.UploadFiles.HomeStudent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <p align="center"> اختر الطلب  </p>
            <br/>

            <asp:DropDownList ID="ddlApplication" runat="server" OnSelectedIndexChanged="ddlApplication_SelectedIndexChanged"></asp:DropDownList>


            <br/>
            <asp:Button ID="btnOK" runat="server" Text="تقديم الطلب " OnClick="btnOK_Click" />


        </div>
    </form>
</body>
</html>

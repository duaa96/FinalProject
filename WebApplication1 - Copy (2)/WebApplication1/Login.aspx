<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>


<html dir="rtl">

<head>
    <title>  Login  </title>
    <!-- Meta Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta Tags -->

    <!-- Style-sheets -->
    <!-- Bootstrap Css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Bootstrap Css -->
    <!-- Common Css -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!--// Common Css -->
    <!-- Fontawesome Css -->
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <!--// Fontawesome Css -->
    <!--// Style-sheets -->

    <!--web-fonts-->
    <link href="//fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <!--//web-fonts-->
</head>

<body>
    <div class="bg-page py-5">
        <div class="container">
            <!-- main-heading -->
            <h2 class="main-title-w3layouts mb-2 text-center text-white">تسجيل الدخول</h2>
            <!--// main-heading -->
            <div class="form-body-w3-agile text-center w-lg-50 w-sm-75 w-100 mx-auto mt-5">
                <form id="frm1" runat="server">
                    <div class="form-group">

                        <table border="0" align="center">
                            <tr>
                                <td>  <label>اسم المستخدم</label> </td>
                                <td>  : </td>
                                <td>    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox> </td>
                                <td> </td>
                                </tr>
                                 <tr>
                                <td> <label>كلمة السر</label> </td>
                                <td>  :</td>
                                <td><asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox> </td>
                                 <td> </td>
                                 </tr>
                             <tr>
                                <td> <label>  </label> </td>
                                <td>  </td>
                                <td>  <asp:RadioButton ID="rdbStudent" runat="server"  Text=" طالب" GroupName="login"/> 
                                    <br/>

                                    <asp:RadioButton ID="rdbEmployee" runat="server"  Text ="موظف" GroupName="login"  />
                                </td>
                                 <td> </td>
                                 </tr>
                             <tr>
                                <td colspan="4" align="center"> 
                                    <asp:Label ID="lbWrong" runat="server" Text="" Visible="false" ForeColor="#CC0000"></asp:Label>

                                    <br />

                                </td>
                                 </tr>
                               <tr>
                                <td colspan="4" align="center"> 
                                    <br/>  <br/>
                                     <asp:Button ID="btnLogin" runat="server" Text="تسجيل الدخول" OnClick="btnLogin_Click" />
                                </td>
                                 </tr>


                            </table>



                      
                   
                      </form>
            </div>

            <!-- Copyright -->
            <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
                <p>© 
                    جمسع الحقوق محفوظة
                </p>
            </div>
            <!--// Copyright -->
        </div>
    </div>


    <!-- Required common Js -->
    <script src='js/jquery-2.2.3.min.js'></script>
    <!-- //Required common Js -->

    <!-- Js for bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
    <!-- //Js for bootstrap working -->

</body>

</html>
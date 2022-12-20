<!--
Author:W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<%@page import="model.customermodel"%>
<html lang="zxx">

<head>
    <title>Baggage Ecommerce Category Bootstrap Responsive Web Template | Sign Up :: W3layouts</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Baggage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->
    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <!-- font-awesome-icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome-icons -->
    <!-- /Fonts -->
    <link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
    <!-- //Fonts -->

</head>

 
    <%
    customermodel c = null;
    if(session.getAttribute("data") != null){
    	c = (customermodel)session.getAttribute("data");
    }
    %>
<body>
    <div class="main-sec inner-page">
        <!-- //header -->
        <header class="py-sm-3 pt-3 pb-2" id="home">
            <div class="container">
                <!-- nav -->
                <div class="top-w3pvt d-flex">
                    <div id="logo">
                        <h1> <a href="index.jsp"><span class="log-w3pvt">B</span>aggage</a> <label class="sub-des">Online Store</label></h1>
                    </div>

                    <div class="forms ml-auto">
                        <a href="customerindex.jsp" class="btn"><span class="fa fa-user-circle-o"></span> Home</a>
                        <a href="customeredit.jsp" class="btn"><span class="fa fa-pencil-square-o"></span> Update Profile</a>
                         <a href="logout.jsp" class="btn"><span class="fa fa-pencil-square-o"></span> Logout</a>
                    </div>
                </div>
                <div class="nav-top-wthree">
                    <nav>
                        <label for="drop" class="toggle"><span class="fa fa-bars"></span></label>
                        <input type="checkbox" id="drop" />
                        <ul class="menu">
                       
                    <!-- //nav -->
                    
                    <div class="clearfix"></div>
                </div>
            </div>
        </header>
        <!-- //header -->

    </div>
    
    

    <!-- //banner-->
    <!--/login -->
    <section class="banner-bottom py-5">
        <div class="container">
            <div class="content-grid">
                <div class="text-center icon">
                    <span class="fa fa-user-circle-o"></span>
                </div>
                <div class="content-bottom">
                    <form action="customercontroller" method="post">
                        <div class="field-group">
                        


                            <div class="content-input-field">
                                <input name="id" id="text1" type="hidden" value="<%= c.getId() %>" required="">
                            </div>
                        </div>
                          <div class="field-group">

                            <div class="content-input-field">
                                <input name="op" id="text1" type="password" value="" placeholder="Enter old Password" required="">
                            </div>
                        </div>
                        
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="np" id="text1" type="password" value="" placeholder="Enter New Password" required="">
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="cnp" id="text3" type="password" value="" placeholder="Confirm New Password" required="">
                            </div>
                        </div>
                       
                        <div class="content-input-field">
                            <button type="submit"   value="changepassword" name="action"    class="btn">Change Password</button>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </section>
    
    <!-- copyright -->
    <div class="cpy-right text-center py-3">
        <p>© 2019 Baggage. All rights reserved | Design by
            <a href="http://w3layouts.com"> W3layouts.</a>
        </p>

    </div>
    <!-- //copyright -->

</body>

</html>

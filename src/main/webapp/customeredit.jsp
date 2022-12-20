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
    
    <%
    customermodel c = null;
    if(session.getAttribute("data") != null){
    	c = (customermodel)session.getAttribute("data");
    }
    %>
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
                 
                        <a href="customerindex.jsp" class="btn"><span class="fa fa-user-circle-o"></span><%= c.getName() %></a>
                        <a href="changepassword.jsp" class="btn"><span class="fa fa-pencil-square-o"></span> Change Password</a>
                          <a href="logout.jsp" class="btn"><span class="fa fa-pencil-square-o"></span> Logout</a>
                    </div>
                </div>
            
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
                                <input name="id" id="text1" type="hidden" value="<%= c.getId() %>" placeholder="User Name" required="">
                            </div>

                            <div class="content-input-field">
                                <input name="name" id="text1" type="text" value="<%= c.getName() %>" placeholder="User Name" required="">
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="email" id="text1" type="email" value="<%= c.getEmail() %>" placeholder="User Email" required="">
                            </div>
                        </div>
                        <div class="field-group">

                            <div class="content-input-field">
                                <input name="phone" id="text3" type="number" value="<%= c.getPhone() %>" placeholder="UserPhone" required="">
                            </div>
                        </div>
                        <div class="content-input-field">
                            <button type="submit"   value="update" name="action"   class="btn">Update</button>
                        </div>
                        <div class="content-input-field">
                            <button type="submit"   value="delete" name="action"   class="btn">Delete</button>
                        </div>
                     
                    </form>
                </div>
            </div>
        </div>
    </section>
   

</body>

</html>

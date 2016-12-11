<%-- 
    Document   : header
    Created on : 23-Nov-2016, 21:59:32
    Author     : Samson
--%>

<%@page import="Data.User"%>
<div class="header wow zoomIn">
    <div class="container">
        <div class="header_left" data-wow-duration="2s" data-wow-delay="0.5s">
            <ul>
                <li><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span>+123 456 7890</li>
                <li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@example.com</a></li>
            </ul>
        </div>
        <div class="header_right">
            <div class="login">
                <ul>
                    <%User user = User.GetCurrent(request);%>
                    <%if (user == null){%>
                    <li><a href="#" data-toggle="modal" data-target="#myModal4"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Login</a></li>
                    <li><a href="#" data-toggle="modal" data-target="#myModal5"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Signup</a></li>
                    <%}else{%>
                    <li><a href="#" data-toggle="modal" data-target="#myModal6"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>Hello <%=user.getName()%></a></li>                    
                    <%}%>
                    <li>
                        <div class="search-bar">
                            <div class="search">		
                                <a class="play-icon popup-with-zoom-anim" href="#small-dialog"><i class="glyphicon glyphicon-search"> </i> </a>
                            </div>
                            <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
                            <div id="small-dialog" class="mfp-hide">
                                <div class="search-top">
                                    <div class="login_pop">
                                        <form action="#" method="post">
                                            <input type="submit" value="">
                                            <input type="text" name="Type something..." value="Type something..." onfocus="this.value = '';" onblur="if (this.value == '') {
                                                                                                            this.value = '';
                                                                                                        }">
                                        </form>
                                    </div>				
                                </div>
                                <script>
                                    $(document).ready(function () {
                                        $('.popup-with-zoom-anim').magnificPopup({
                                            type: 'inline',
                                            fixedContentPos: false,
                                            fixedBgPos: true,
                                            overflowY: 'auto',
                                            closeBtnInside: true,
                                            preloader: false,
                                            midClick: true,
                                            removalDelay: 300,
                                            mainClass: 'my-mfp-zoom-in'
                                        });

                                    });
                                </script>				
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //header -->
<div class="header-bottom ">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="logo grid">
                    <div class="grid__item color-3">
                        <h1><a class="link link--nukun" href="index.jsp"><i></i>e<span>H</span>ealth</a></h1>
                    </div>
                </div>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse nav-wil" id="bs-example-navbar-collapse-1">
                <nav class="menu menu--horatio">
                    <ul class="nav navbar-nav menu__list">
                        <li class="menu__item menu__item--current"><a href="index.jsp" class="menu__link">Home</a></li>
                        <li class="menu__item"><a href="users.jsp" class="menu__link">Patients</a></li> 
                        <li class="menu__item"><a href="practitioners.jsp" class="menu__link">Experts</a></li> 
                        <li class="menu__item"><a href="records.jsp" class="menu__link">My Records</a></li> 
                        <li class="menu__item"><a href="diagnose.jsp" class="menu__link">Diagnosis</a></li> 
                        <li class="menu__item"><a href="contact.html" class="menu__link">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </nav>
    </div>
</div>


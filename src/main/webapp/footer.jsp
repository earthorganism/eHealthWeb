<%-- 
    Document   : footer
    Created on : 23-Nov-2016, 22:23:02
    Author     : Samson
--%>

<%@page import="Data.User"%>
<div class="contact">
    <div class="container">

        <div class="col-md-6 contact-right wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
            <h3>Contact Us</h3>
            <div class="strip"></div>
            <ul class="con-icons">
                <li><span class="glyphicon glyphicon-phone" aria-hidden="true"></span>+123 456 7890</li>
                <li><a href="mailto:info@example.com"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>info@example.com</a></li>
            </ul>
            <ul class="fb_icons">
                <li class="hvr-rectangle-out"><a class="fb" href="#"></a></li>
                <li class="hvr-rectangle-out"><a class="twit" href="#"></a></li>
                <li class="hvr-rectangle-out"><a class="goog" href="#"></a></li>
                <li class="hvr-rectangle-out"><a class="pin" href="#"></a></li>
                <li class="hvr-rectangle-out"><a class="drib" href="#"></a></li>
            </ul>
            <h3>Newsletter Sign up</h3>
            <div class="strip"></div>
            <form action="#" method="post">
                <input type="text" name="Name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                            this.value = 'Name';
                        }" required="">
                <input type="email" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                            this.value = 'Email';
                        }" required="">
                <input type="submit" value="Submit">
            </form>
        </div>
        <div class="col-md-6 contact-left wow fadeIn animated animated" data-wow-delay="0.1s" data-wow-duration="2s">
            <h2>Information</h2>
            <div class="strip"></div>
            <p class="para">At vero eos et accusamus et iusto odio dignissimos
                ducimus qui blanditiis praesentium voluptatum deleniti at
                que corrupti quos dolores et quas molestias excepturi sint
                occaecati cupiditate non provident, similique sunt.</p>
            <p class="copy-right">© 2016 Infirmary. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //contact -->
<!-- login -->
<div class="modal fade" id="myModal4" tabindex="-1" role="dialog" >
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
            </div>
            <div class="modal-body modal-spa">
                <div class="login-grids">

                    <div class="login-right">
                        <h3>Sign in with your account</h3>
                        <form action="login.jsp" method="post">
                            <div class="sign-in">
                                <h4>Email :</h4>
                                <input type="text" name="email" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Type here';
                                        }" required="">	
                            </div>
                            <div class="sign-in">
                                <h4>Password :</h4>
                                <input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Password';
                                        }" required="">
                                <a href="#">Forgot password?</a>
                            </div>
                            <div class="single-bottom">
                                <input type="checkbox"  id="brand" value="">
                                <label for="brand"><span></span>Remember Me.</label>
                            </div>
                            <div class="sign-in">
                                <input type="submit" value="SIGNIN" >
                            </div>
                        </form>
                    </div>

                    <p>By signing up you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //login -->
<!-- login -->
<div class="modal fade" id="myModal5" tabindex="-1" role="dialog" >
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
            </div>
            <div class="modal-body modal-spa">
                <div class="login-grids">
                    <div class="login-bottom">
                        <h3>Sign up for free</h3>
                        <form action="signup.jsp" method="post">
                            <div class="sign-up">
                                <h4>Email :</h4>
                                <input type="text" name="email" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Type here';
                                        }" required="">	
                            </div>
                            <div class="sign-up">
                                <h4>Password :</h4>
                                <input type="password" name="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Password';
                                        }" required="">

                            </div>
                            <div class="sign-up">
                                <h4>Re-type Password :</h4>
                                <input type="password" name="cpassword" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Password';
                                        }" required="">

                            </div>
                            <div class="sign-up">
                                <input type="submit" value="REGISTER NOW"  >
                            </div>

                        </form>
                    </div>
                    <p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                </div>
            </div>
        </div>
    </div>
</div>

<%User muser = User.GetCurrent(request);%>
<%if (muser != null){%>
<div class="modal fade" id="myModal6" tabindex="-1" role="dialog" >
    <div class="modal-dialog" role="document">
        <div class="modal-content modal-info">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
            </div>
            <div class="modal-body modal-spa">
                <div class="login-grids">
                    <div class="login-bottom">
                        <h3>Hello <%=muser.getName()%></h3>
                        <%User user_user = muser;%>
                        <%@include file="user.jsp" %>
                        <form action="logout.jsp" method="post">
                            <div class="sign-up">
                                <input type="submit" value="Log Out"  >
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%}%>

<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>



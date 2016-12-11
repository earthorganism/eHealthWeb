<%-- 
    Document   : indexContent
    Created on : 23-Nov-2016, 22:07:13
    Author     : Samson
--%>

<div class="content">
    <div class="container">
        <div class="col-md-4 content_right wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.1s">
            <img class="img-responsive" src="images/pic1.jpg" alt=" " />
        </div>
        <div class="col-md-4 content_left wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.2s">
            <div class="welcome">
                <h3>Welcome To Infirmary</h3>
                <ul>
                    <li><a href="#">Accusantium Doloremque Accus</a></li>
                    <li><a href="#">Molestiae Consequatur Molestiae</a></li>
                    <li><a href="#">Nostrum Exercitationem Nostrum</a></li>
                    <li><a href="#">Consequuntur Magnidolor Nostrum</a></li>
                    <li><a href="#">Molestiae Consequatur Molestiae</a></li>
                    <li><a href="#">Nostrum Exercitationem Nostrum</a></li>
                    <li><a href="#">Consequuntur Magnidolor Nostrum</a></li>
                </ul>
            </div>
        </div>
        <div id="book" class="col-md-4 content_middle wow flipInY" data-wow-duration="1.5s" data-wow-delay="0.3s">
            <h3>Book An Appointment</h3>
            <form action="#" method="post">
                <input type="text" name="Name" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {
                            this.value = 'Name';
                        }" required="">
                <input type="text" name="Email" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {
                            this.value = 'Email';
                        }" required="">
                <input class="date" name="19/10/2016" id="datepicker" type="text" value="19/10/2016" onfocus="this.value = '';" onblur="if (this.value == '') {
                            this.value = '19/10/2016';
                        }" required="">
                <select id="country" onchange="change_country(this.value)" class="frm-field required sect">
                    <option value="null">Select Department</option>
                    <option value="null">Health Care</option> 
                    <option value="null">Body Checkup</option>					
                    <option value="null">Out Patient</option>
                    <option value="null">Surgery</option>											
                </select>
                <input type="submit" value="Book Now">
            </form>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //content -->
<!-- services -->
<div class="services">
    <div class="container">
        <div class="col-md-4 services_left wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0s">
            <h3>Our Best Services</h3>
            <p class="ser-para" >Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. </p>
            <a href="about.html" class="hvr-outline-out button2">See More About Us</a>
            <script>
                // You can also use "$(window).load(function() {"
                $(function () {
                    // Slideshow 4
                    $("#slider4").responsiveSlides({
                        auto: true,
                        pager: true,
                        nav: false,
                        speed: 500,
                        namespace: "callbacks",
                        before: function () {
                            $('.events').append("<li>before event fired.</li>");
                        },
                        after: function () {
                            $('.events').append("<li>after event fired.</li>");
                        }
                    });
                });
            </script>
            <div  class="callbacks_container">
                <ul class="rslides" id="slider4">
                    <li>
                        <div class="ser-bottom">
                            <h5>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                                sed quia consequuntur magni dolores eos qui </h5>
                            <p>- Alia Smith</p>
                        </div>
                    </li>
                    <li>
                        <div class="ser-bottom">
                            <h5>Voluptas sit aspernatur aut odit aut fugit,sed quia consequuntur magni dolores 
                                eos qui ratione voluptatem sequi nesciunt</h5>
                            <p>- Thompson</p>
                        </div>
                    </li>
                    <li>
                        <div class="ser-bottom">
                            <h5>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                                sed quia consequuntur magni dolores eos qui </h5>
                            <p>- Federic</p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="col-md-8 services_right ">
            <div class="list-left text-center wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0.1s">
                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                <h4>Voluptatem</h4>
                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                    sed quia consequuntur magni dolores eos qui</p>
            </div>
            <div class="list-left text-center wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0.2s">
                <span class="glyphicon glyphicon-scissors" aria-hidden="true"></span>
                <h4>Voluptatem</h4>
                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                    sed quia consequuntur magni dolores eos qui</p>
            </div>
            <div class="list-left text-center no_marg wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0.3s">
                <span class="glyphicon glyphicon-apple" aria-hidden="true"></span>
                <h4>Voluptatem</h4>
                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                    sed quia consequuntur magni dolores eos qui</p>
            </div>
            <div class="list-left text-center no_marg wow bounceInDown" data-wow-duration="1.5s" data-wow-delay="0.4s">
                <span class="glyphicon glyphicon-education" aria-hidden="true"></span>
                <h4>Voluptatem</h4>
                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
                    sed quia consequuntur magni dolores eos qui</p>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //services -->
<!-- team -->
<div class="ind-team">
    <div class="container">
        <h3>Meet Our Team</h3>
        <div class="col-md-4 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
            <div class="team-img">
                <img class="img-responsive" src="images/pic4.jpg" alt=" "/>
                <div class="team-info">
                    <ul>
                        <li class="hvr-rectangle-out"><a class="eco1" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco2" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco3" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco4" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco5" href="#"></a></li>
                    </ul>
                </div>
            </div>
            <h4>Dr. Federica</h4>
            <p>Dental Surgeon</p>
        </div>
        <div class="col-md-4 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
            <div class="team-img">
                <img class="img-responsive" src="images/pic5.jpg" alt=" "/>
                <div class="team-info">
                    <ul>
                        <li class="hvr-rectangle-out"><a class="eco1" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco2" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco3" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco4" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco5" href="#"></a></li>
                    </ul>
                </div>
            </div>
            <h4>Dr. Thompson</h4>
            <p>Cardiology</p>

        </div>
        <div class="col-md-4 ind-gds text-center wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.1s">
            <div class="team-img">
                <img class="img-responsive" src="images/pic6.jpg" alt=" "/>
                <div class="team-info">
                    <ul>
                        <li class="hvr-rectangle-out"><a class="eco1" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco2" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco3" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco4" href="#"></a></li>
                        <li class="hvr-rectangle-out"><a class="eco5" href="#"></a></li>
                    </ul>
                </div>
            </div>
            <h4>Dr. Victoria</h4>
            <p>Neurology</p>
        </div>

        <div class="clearfix"></div>
    </div>
</div>
<!-- team -->
<!-- capabilities -->
<div class="capacity">
    <div class="container">
        <h3>Capabilities</h3>
        <div class="col-md-3 capabil_grid1 wow fadeInDownBig animated animated text-center" data-wow-delay="0.4s">
            <div class="capil_text">
                <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='5700' data-delay='.5' data-increment="100">5700</div>
                <p>Happy Patients</p>	
            </div>
        </div>
        <div class="col-md-3 capabil_grid2 wow fadeInUpBig animated animated text-center" data-wow-delay="0.4s">
            <div class="capil_text">
                <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='1700' data-delay='.5' data-increment="5">1700</div>
                <p>Our Staff</p>	
            </div>
        </div>
        <div class="col-md-3 capabil_grid3 wow fadeInDownBig animated animated text-center" data-wow-delay="0.4s">
            <div class="capil_text">
                <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='0021' data-delay='.5' data-increment="100">0021</div>				
                <p>Foundation</p>
            </div>
        </div>
        <div class="col-md-3 capabil_grid4 wow fadeInUpBig animated animated text-center" data-wow-delay="0.4s">
            <div class="capil_text">
                <div class='numscroller numscroller-big-bottom' data-slno='1' data-min='0' data-max='2500' data-delay='.5' data-increment="1">2500</div>
                <p>Clients</p>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- //capabilities -->


<%-- 
    Document   : user
    Created on : 24-Nov-2016, 14:35:56
    Author     : Samson
--%>
<%-- User user_user--%>
<div class="ind-gds text-center">
    <div class="team-img">
        <%if (user_user.hasLogo()){%>
            <img class="img-responsive" src='<%=user_user.getName()+".jpg"%>' alt=" "/>
        <%}else if (User.GetCurrent(request) == user_user){%>
        <form action="userimage.jsp" enctype="multipart/form-data" method="post">
                <div class="sign-up">
                    <h4>Upload an image</h4>
                    <input type="file" name="file" value="" style="width:100%">
                </div>
                <div class="sign-up">
                    <input type="submit" value="Upload">
                </div>
            </form>
        <%}else{%>
            <img class="img-responsive" src="user.jpg" alt=" "/>        
        <%}%>
        <div class="team-info" style="position:relative">
            <ul>
                <li class="hvr-rectangle-out"><a class="eco1" href="#"></a></li>
                <li class="hvr-rectangle-out"><a class="eco2" href="#"></a></li>
                <li class="hvr-rectangle-out"><a class="eco3" href="#"></a></li>
                <li class="hvr-rectangle-out"><a class="eco4" href="#"></a></li>
                <li class="hvr-rectangle-out"><a class="eco5" href="#"></a></li>
            </ul>
        </div>
    </div>
    <h4><%=user_user.getName()%></h4>
    <p><%=user_user.getRole()%></p>
</div>

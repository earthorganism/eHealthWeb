<%-- 
    Document   : master
    Created on : 23-Nov-2016, 21:48:57
    Author     : Samson
--%>

<%--boolean showBanner = true;--%>
<%--String masterHead = "";--%>
<html>
    <%@include  file="head.jsp" %>
    <body>
        <%@include  file="header.jsp" %>
        <%if (showBanner){%>
        <%@include  file="banner.jsp" %>
        <%}%>
        <div class="masterContainer" style="margin:auto">
            <div class="row">
                <h2 style="color:#567834">
                <%=masterHead%>
                </h2>
                <br>
                <br>
                <br>
            </div>
            <!--div class="row">
                <div class="col-sm-9 pull-right"-->

<%-- 
    Document   : record
    Created on : 24-Nov-2016, 19:12:41
    Author     : Samson
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%String masterHead = "Mr Records";%>
<%boolean showBanner = false;%>
<%@include file="masterBegin.jsp" %>
<h2>My Medical Records</h2>

<div class="row">
    <div class="col-sm-6">
        <h1>
        <a href="savedrecords.jsp">Past Records</a>
        </h1>
    </div>
    <div class="col-sm-6">
        <h1>
        <a href="realrecords.jsp">Realtime Records</a>  
        </h1>
    </div>
</div>
<%@include file="masterEnd.jsp" %>

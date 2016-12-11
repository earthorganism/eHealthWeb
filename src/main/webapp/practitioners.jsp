<%-- 
    Document   : practitioners
    Created on : 24-Nov-2016, 19:22:02
    Author     : Samson
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%boolean showBanner = false;%>
<%String masterHead = "Medicals";%>
<%@include file="masterBegin.jsp" %>
<h2>Experts</h2>
<%
List<User> users = User.Get();
for (User us:users)
{
    if (!us.isPatient())
{
        User user_user = us;
%>
<div style="width:250px;float:left;margin:20px">
<%@include file="user.jsp" %>
</div>
<%}}%>
<div class="clearfix"/>

<%@include file="masterEnd.jsp" %>

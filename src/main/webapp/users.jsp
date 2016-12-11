<%-- 
    Document   : users
    Created on : 24-Nov-2016, 19:18:09
    Author     : Samson
--%>

<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%boolean showBanner = false;%>
<%@include file="masterBegin.jsp" %>
<h2>Users</h2>
<%
List<User> users = User.Get();
for (User us:users)
{
    if (us.isPatient())
{
        User user_user = us;
%>
<div style="width:250px;float:left;margin:20px">
<%@include file="user.jsp" %>
</div>
<%}}%>
<div class="clearfix"/>

<%@include file="masterEnd.jsp" %>

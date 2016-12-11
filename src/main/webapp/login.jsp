<%-- 
    Document   : login
    Created on : 24-Nov-2016, 11:28:10
    Author     : Samson
--%>

<%@page import="Data.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%
    String name = request.getParameter("email");
    String pass = request.getParameter("password");
    User us = User.GetByName(name);
    if (us != null){
        if (us.getPassword().equals(pass)){
            User.SetCurrent(response, us);
            response.sendRedirect("index.jsp");
        }
    }
%>
<%boolean showBanner = false;%>
<%@include file="masterBegin.jsp" %>
Something went wrong, please retry
<%@include file="masterEnd.jsp" %>
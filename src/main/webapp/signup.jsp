<%-- 
    Document   : signup
    Created on : 23-Nov-2016, 22:35:47
    Author     : Samson
--%>

<%@page import="java.util.Calendar"%>
<%@page import="Data.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%
    boolean success = false;
    String name = request.getParameter("email");
    String pass = request.getParameter("password");
    String cpass = request.getParameter("cpassword");
    if (name != null && pass != null && pass.equals(cpass)) {
        User us = new User();
        us.setName(name);
        us.setPassword(pass);
        us.setJoinDate(Calendar.getInstance().getTime());
        us.setId((long) (User.Get().size()));
        us.setRole("");
        User.Add(us);
        User.SetCurrent(response, us);
        response.sendRedirect("index.jsp");
        success = true;
    }
%>
<%boolean showBanner = false;%>

<%@include file="masterBegin.jsp" %>
<h2>
    SignUp
</h2>
<%if (success){%>
You have been signed up and logged in
<%}else{%>
Something went wrong
<%}%>
<%@include file="masterEnd.jsp" %>
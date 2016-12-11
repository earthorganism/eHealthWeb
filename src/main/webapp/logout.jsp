<%-- 
    Document   : logout
    Created on : 24-Nov-2016, 13:22:09
    Author     : Samson
--%>

<%@page import="Data.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    User.SetCurrent(response, null);
    response.sendRedirect("index.jsp");
%>

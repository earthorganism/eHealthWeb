<%-- 
    Document   : savedrecords
    Created on : 24-Nov-2016, 20:20:57
    Author     : Samson
--%>

<%@page import="Data.Vitals"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%boolean showBanner = false;%>
<%String masterHead = "Mr Records";%>
<%@include file="masterBegin.jsp" %>
<div style="float:right">
    <a href="savedrecords2.jsp">Table View</a>
</div>
<h2>Past Records</h2>
<%
User us = User.GetCurrent(request);
if (us != null){
List<Vitals> vts = us.getVitals();
for (Vitals v:vts)
{
        Vitals vital_vital = v;
%>
<div style="width:250px;float:left;margin:20px">
<%@include file="vitals_brief.jsp" %>
</div>
<%}}%>
<div class="clearfix"/>

<%@include file="masterEnd.jsp" %>

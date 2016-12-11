<%-- 
    Document   : vitals
    Created on : 24-Nov-2016, 21:06:12
    Author     : Samson
--%>

<%@page import="Data.Vitals"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%boolean showBanner = false;
    %>
<%String masterHead = "Mr Records";%>
<%@include file="masterBegin.jsp" %>
<%
    String id = request.getParameter("id");
    int idd = Integer.parseInt(id);
    Vitals v = Vitals.GetByID(idd);
    if (v != null) {
%>
<h2><%=v.getDate().toLocaleString()%></h2>
<div class="vitalsPage">
<div style="float:right;width:50%">
<div>
    <label>ECG:</label>
</div>
<div>
    <label>Breath:</label>
</div>
</div>
<div style="width:50%">
<div>
    <label>Temperature:</label>
    <h3><%=v.getTemperature()%></h3>
</div>
<div>
    <label>BPM:</label>
    <h3><%=v.getBpm()%></h3>
</div>
<div>
    <label>SPO2:</label>
    <h3><%=v.getSpo2()%></h3>
</div>
<div>
    <label>Sweat:</label>
    <h3><%=v.getSweat()%></h3>
</div>
</div>
</div>
<%}%>
<div class="clearfix"/>

<%@include file="masterEnd.jsp" %>

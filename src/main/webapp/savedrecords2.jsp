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
    <a href="savedrecords.jsp">Grid View</a>
</div>
<h2>Past Records</h2>
<table style="width:100%">
    <thead>
    <td>
        Date
    </td>
    <td>
        Temperature
    </td>
    <td>
        BPM
    </td>
    <td>
        SPO2
    </td>
    <td>
        Sweat
    </td>
    <td>
        Link
    </td>
    </thead>
<%
User us = User.GetCurrent(request);
if (us != null){
List<Vitals> vts = us.getVitals();
for (Vitals v:vts)
{
%>
<tr>
    <td>
        <%=v.getDate().toLocaleString()%>
    </td>
    <td>
        <%=v.getTemperature()%>
    </td>
    <td>
        <%=v.getBpm()%>
    </td>
    <td>
        <%=v.getSpo2()%>
    </td>
    <td>
        <%=v.getSweat()%>
    </td>
    <td>
        <a href="vitals.jsp?id=<%=v.getId()%>">Open</a>
    </td>
</tr>
</div>
<%}}%>
</table>
<%@include file="masterEnd.jsp" %>

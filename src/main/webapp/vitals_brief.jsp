<%-- 
    Document   : vitals_brief
    Created on : 24-Nov-2016, 20:35:38
    Author     : Samson
--%>

<%@page import="java.text.DateFormat"%>
<%@page import="Data.Vitals"%>
<!--%Vitals vital_vital = null;%-->

<div style="margin:10px">
    <a href="vitals.jsp?id=<%=vital_vital.getId()%>">
        <h3>
            <%=vital_vital.getDate().toLocaleString()%>
        </h3>
    </a>
</div>
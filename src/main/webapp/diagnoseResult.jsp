<%-- 
    Document   : diagnoseResult
    Created on : 25-Nov-2016, 13:19:33
    Author     : Samson
--%>

<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="javax.swing.text.DateFormatter"%>
<%@page import="java.util.Calendar"%>
<%@page import="Data.DiagnosisResult"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    boolean showBanner = false;
    String masterHead = "Diagnosis Result";
    DiagnosisResult userResult=(DiagnosisResult) session.getAttribute("diagnosis");
    %>

<%@include file="masterBegin.jsp" %>

<table >
    <th>
        <td style=font-size:xx-large" >
            Result summary
            <br />
            <br />
        </td>
    </th>
    <tr >
        <td style="color:brown;font-weight: bold;font-size: medium" >
            Your online diagnosis completed at My diagnosis <!--on <%=Calendar.getInstance().toString()%>--> includes the following
            <br />
            <br />
        </td>
    </tr>
    <tr >
        <td style="color:red;font-weight: bold;font-size:large"   >
            PERSONAL INFORMATION
            <br />
            <br />
        </td>
    </tr>
    <tr >
        <td >
            Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=userResult.userName%>
        </td>
    </tr>
    <tr >
        <td >
            You are <%=userResult.userAge%> years old <%=userResult.userMarried%> &nbsp; <%=userResult.userSex%>,
            born at <%=userResult.userBirthAddress%>
            living at <%=userResult.userResidenceAddress%>.
            <br />
            You are currently at <%=userResult.userCurrentLocationAddress%>
            <br />
            You are <%=userResult.userHeight%> meter tall, weighing <%=userResult.userWeight%> kg.
            <br />
            Your occupation is <%=userResult.userOccupation%>
            <br />
            Your Body mass index is <%=userResult.userBMI%> kg per sq(m)
            <br />
            <%=userResult.CommentOnBMI()%>
            <br />
            <%=userResult.CommentOnSmoke()%>
            <br />
            <%=userResult.CommentOnAlcohol()%>
            <br />
            <%=userResult.CommentOnDrug()%>
            <br />
            <%=userResult.CommentOnHealth()%>
        </td>
    </tr>
    <tr >
        <td style="color:red;font-weight: bold;font-size:large"   >
            VACCINE:
            <br />
        </td>
        <td >
            <%=userResult.CommentOnVaccine()%>
            <br />
        </td>
    </tr>
    <tr >
        <td >
        .<br />
        .<br />
        .<br />
        .<br />
        .<br />
        .<br />
        .<br />
        .<br />
        .<br />
        .<br />
        .<br />
        </td>
    </tr>
    <tr >
        <td style="color:red;font-weight: bold;font-size:large"  >
        Probable ailments (user discretion are advised)
        </td>
    </tr>
    <tr >
       <td>
       <table   >
        <th  >
           <td >
                  Ailment name
           </td>
           <td >
                  Description
            </td>
           <td >
                  Probability
            </td>
           <td >
                  Cause
           </td>
           <td >
                  Advise
           </td>            
        </th>
        <tr  >
           <td >
                  Autism
           </td>
           <td >
                  Brain’s abnormal development
           </td>
           <td >
                  80%
           </td>
           <td >
                  Genetic, Mercury poisoning, Vaccine
           </td>
           <td >
                  Please visit a therapist
           </td>
         </tr>
        <tr  >
           <td >
                  Mental retardation
           </td>
           <td >
                  Brain’s abnormal development
           </td>
           <td >
                  20%
           </td>
           <td >
                  Genetic
           </td>
           <td >
                  Please visit a therapist
           </td>
         </tr>
       </table>
       <br />
        <br />
    <br />
        <br />
       </td>
    </tr>
    <tr >
        <td  colspan="3" style="color:red;font-weight: bold;font-size:large"   >
        What would you like to do with this result
        <br />
        <br />
    </td>
    </tr>
    <tr >
    <td  colspan ="3" >
    <input type="submit"  target="#" value="Create my PHR" />
    <input type="submit"  target="#" value="Send as email" />
    <input type="submit"  target="#" value="Print" onclick ="javascript:document.print();" />
    </td>
    </tr>
</table>
<%@include file="masterEnd.jsp" %>
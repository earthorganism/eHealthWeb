<%-- 
    Document   : userimage
    Created on : 24-Nov-2016, 15:28:48
    Author     : Samson
--%>

<%@page import="java.io.InputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="Data.User"%>
<%@page import="java.io.FileWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    User us = User.GetCurrent(request);
    if (us != null) {
        if (request.getPart("file") != null) {
            Part filePart = request.getPart("file");
            InputStream instream = filePart.getInputStream();
            String fileName = us.getPictureName();
            OutputStream outstream = new FileOutputStream(new File(fileName));
            
            byte[] bytes = new byte[1024];
            int read = 0;
            while((read = instream.read(bytes)) != -1){
                outstream.write(bytes, 0, read);
            }
        }
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Date & Time</title>
    </head>
    <body>
        <h1>Currently date and time: </h1>
       <h2> <%out.println(new Date());%> </h2>        
    </body>
</html>

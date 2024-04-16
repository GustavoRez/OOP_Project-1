<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
        <style>
            a{
                color: darkred;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf"%>
        <h1>Other pages:</h1>
        <h2><a href="numero-primo.jsp">Prime Numbers</a></h2>
        <h2><a href="fibonacci.jsp">Fibonacci Sequence</a></h2>
        <h2><a href="soma.jsp">Sum</a></h2>
        
    </body>
</html>

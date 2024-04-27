<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <%@include file="WEB-INF/jspf/html-head-libs.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <%if(username != null){%>
        <div class="m-2">
            <h1>Home Page</h1>
            <div>
                To see my data and subjects that i'm learning <a href="gustavo.json" target='_blank'>click here!</a><br>
                To see only my subjects <a href="disciplinas.jsp" target='_blank'>click here!</a> (not working yet)
            </div>
        </div>
        <%}%>
        <%@include file="WEB-INF/jspf/html-body-libs.jspf"%>
    </body>
</html>

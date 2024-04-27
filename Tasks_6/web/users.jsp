<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuários</title>
        <%@include file="WEB-INF/jspf/html-head-libs.jspf"%>        
        <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
        <script defer src="https://cdn.jsdelivr.net/npm/@alpinejs/mask@3.x.x/dist/cdn.min.js"></script>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <%if(username != null){%>
        <div class="m-2">
            <h2>Users</h2>
            <%for(String user: users){%>
                <div><%= user%></div>
            <%}%>
        </div>
        <%}%>              
        
        <%@include file="WEB-INF/jspf/html-body-libs.jspf"%>
    </body>
</html>

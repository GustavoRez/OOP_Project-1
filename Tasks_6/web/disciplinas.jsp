<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subjects</title>
        <%@include file="WEB-INF/jspf/html-head-libs.jspf"%>       
        <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
        <script defer src="https://cdn.jsdelivr.net/npm/@alpinejs/mask@3.x.x/dist/cdn.min.js"></script>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>

        
        <%            
            for(int i = 0; i <= 461; i++){
                out.println("Stil trying");
            }
            
        %>


        <%@include file="WEB-INF/jspf/html-body-libs.jspf"%>
    </body>
</html>

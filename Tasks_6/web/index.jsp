<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="WEB-INF/jspf/html-head-libs.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <%if(username != null){%>
        <div class="m-2">
            <h1>Página Inicial</h1>
            <div>
                Meus dados e matérias cursadas. Para ver <a href="gustavo.json" target='_blank'>clique aqui!</a><br>
                Minhas disciplinas (ainda não funcionando). Para ver <a href="disciplinas.jsp" target='_blank'>clique aqui!</a>
            </div>
        </div>
        <%}%>
        <%@include file="WEB-INF/jspf/html-body-libs.jspf"%>
    </body>
</html>

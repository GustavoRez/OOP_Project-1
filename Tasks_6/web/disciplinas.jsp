<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Subjects</title>
        <%@include file="WEB-INF/jspf/html-head-libs.jspf"%>
        <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.13.10/dist/cdn.min.js"></script>
        <style>
            #demo{
                font-size: 20px;
                margin: 20px;
            }
        </style>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>                    

        <p id="demo"></p>

        <script type="module">
            getText("gustavo.json");
            async function getText(file) {
                let x = await fetch(file);
                let y = await x.text();
                document.getElementById("demo").innerHTML = y;
            }
        </script>        
        <script>
            
        </script>

        <%@include file="WEB-INF/jspf/html-body-libs.jspf"%>
    </body>
</html>

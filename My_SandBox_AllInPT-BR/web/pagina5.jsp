<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pagina JS Real</title>
    </head>
    <body style="background: gray">
        <%@include file="WEB-INF/menu.jspf"%>
        
        <h2 id="seg">Quer saber um segredo?
            <button type="button"onclick="document.getElementById('seg').innerHTML = 'Essa página talvez seja cheia de botões.'">
                Clica aqui!
            </button>
        </h2>
        <br>
        <h2>↓ Este é o único que não pode ser clicado!!</h2>
        <input type='button' onclick='alert("Ousado.")'/>
        
        
        
        
        
    </body>
</html>

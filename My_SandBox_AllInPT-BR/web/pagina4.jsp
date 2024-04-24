<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página com CSS</title>
        <link rel="stylesheet" href="NaoPaginas/MyStyle.css">
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf"%>
        <h1 id="ap">Isso é uma página com CSS</h1>        
        <h2 id="pol">Página poluída alert!</h2>
        <h2 id="esquerda">Essa frase ficará na direita</h2>
        <h2 id="direita">E essa ficará na esquerda</h2>
        <div>
            <h2><b>Essa divisão terá uma borda tracejada em vermelho!!</b></h2>
        </div>
        <h2 id="rotacao">Não entendi muito bem como funciona css, mas acho que com um pouco de
            criatividade pode se criar coisas muito interessantes.</h2>        
        <a style='color: darkgreen' href="index.jsp"/> <h2>Final da página. Pode ir embora!</h2> </a>
        
        
    </body>
</html>

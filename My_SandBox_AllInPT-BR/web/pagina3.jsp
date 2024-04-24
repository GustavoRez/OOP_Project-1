<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Aulas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body style="background: gray">      
        <%@include file="WEB-INF/menu.jspf"%>
        <h1>Essas são as aulas que tive.</h1>
        <h3>Caso queira acessar as páginas, baixe <a href="NaoPaginas/OOP.zip" download="Programacao_Orientada_a_Objeto.zip">clicando aqui</a>.</h3>
        <ul>
            <li>Tarefa 1
                <ul>
                    <li><a href="http://localhost:8080/Tasks_1" target="_blank">Página Incial</a>
                    <li><a href="http://localhost:8080/Tasks_1/me.html" target="_blank">Me "apresentando"</a>
                    <li><a href="http://localhost:8080/Tasks_1/greeting.html" target="_blank">Saudações</a>
                    <li><a href="http://localhost:8080/Tasks_1/random.html" target="_blank">6 números aleatórios</a>
                </ul>
            <li>Tarefa 2
                <ul>
                    <li><a href="http://localhost:8080/Tasks_2" target="_blank">Página Incial + Gerenciar suas matérias</a>
                    <li><a href="http://localhost:8080/Tasks_2/lottery.json" target="_blank">Loteria</a>
                </ul>
            <li>Tarefa 3
                <ul>
                    <li><a href="http://localhost:8080/Tasks_3" target="_blank">Página Incial</a>
                    <li><a href="http://localhost:8080/Tasks_3/Sum.jsp" target="_blank">Calculadora de soma</a>
                    <li><a href="http://localhost:8080/Tasks_3/Random.jsp" target="_blank">Numeros aleatórios Upgradeado</a>
                    <li><a href="http://localhost:8080/Tasks_3/MultiTable.jsp" target="_blank">Tabuada</a>
                    <li><a href="http://localhost:8080/Tasks_3/Calendar.jsp" target="_blank">Calendario que não funciona :)</a>
                </ul>
            <li>Tarefa 4    
                <ul>
                    <li><a href="http://localhost:8080/Tasks_4" target="_blank">Página Incial</a>
                    <li><a href="http://localhost:8080/Tasks_4/juros-simples.jsp" target="_blank">Aplicação de juros simples</a>
                    <li><a href="http://localhost:8080/Tasks_4/juros-composto.jsp" target="_blank">Aplicação de juros composto</a>                    
                </ul>

        </ul>

    </body>
</html>
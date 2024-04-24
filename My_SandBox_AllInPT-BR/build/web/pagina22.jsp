<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sua lista</title>
        <style>
            input{
                background-color: gray
            }
            ::placeholder{
                color: black;
            }
            button{
                color: white;
                background: black;
            }
        </style>
    </head>
    <body style="background: gray">
        <%@include file="WEB-INF/menu.jspf"%>

        <h1>Vamos começar:</h1>

        <input type="text" id="newGame" placeholder="Insira aqui seu jogo:"/>
        <button onclick="add()">+</button>
        
        <input type="text" id="remGame" placeholder="Remova um jogo:"/>
        <button onclick="rem()">-</button>
        
        <p id="games"></p>


        <script>
            var game = [];
            let medal;

            function add() {
                let teste = document.getElementById("newGame");
                game.push(teste.value);
                teste.value = "";

                let text = "<ol>";
                for (let i = 0; i < game.length; i++) {
                    if(i==0)medal = "&#x1F947";
                    else if(i==1)medal = "&#x1F948";
                    else if(i==2)medal = "&#x1F949";
                    else medal = "";
                    text += "<li>" + game[i] + medal + "</li>";
                }
                text += "</ol>";

                document.getElementById("games").innerHTML = text;
            }
            
            
            function rem() {
                let teste = document.getElementById("remGame");
                const index = game.indexOf(teste.value);
                teste.value = "";
                
                if (index > -1) {
                    game.splice(index, 1);
                }
                
                let text = "<ol>";
                for (let i = 0; i < game.length; i++) {
                    if(i==0)medal = "&#x1F947";
                    else if(i==1)medal = "&#x1F948";
                    else if(i==2)medal = "&#x1F949";
                    else medal = "";
                    text += "<li>" + game[i] + medal + "</li>";
                }
                text += "</ol>";

                document.getElementById("games").innerHTML = text;
            }
        </script>
    </body>
</html>
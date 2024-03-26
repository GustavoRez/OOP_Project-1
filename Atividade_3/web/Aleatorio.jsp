<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Random</title>
    </head>
    <body>
        <h1>Insert how many random number you want:</h1>
        
        <form action="" method="get">
            <input type="text" name="x" placeholder="How many numbers:"/>
            <input type="submit" value="ok"/>
        </form>
        
        
        <h2>
            <%
                String x;
                int qtd;
                
                x = request.getParameter("x");
                
                try{
                    qtd = Integer.valueOf(x);
                    for(int i = 0; i < qtd; i++){
                        Random rand = new Random();
                        int randNum = rand.nextInt(100);
                        out.println(randNum + "|");
                    }
                } catch(NumberFormatException e){
                    out.println("");
                }
            %>
        </h2>
    </body>
</html>

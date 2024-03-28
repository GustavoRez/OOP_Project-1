<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiplication table</title>
    </head>
    <body>
        <form action="" method="get">
            <input type="text" name="x1" placeholder="Size of your table:"/>
            <input type="text" name="x2" placeholder="Insert the multiplier:"/>
            <input type="submit" value="ok"/>
        </form>
        <h2>
            There is your multiplication table: <br>
        <%
            String x1, x2;
            int x, y;
            
                x1 = request.getParameter("x1");
                x2 = request.getParameter("x2");
                
                try{
                x = Integer.valueOf(x1);
                y = Integer.valueOf(x2);
                
                for (int i = 1; i <= x; i++){
                    out.println(y + " x " + i + "= " + i * y);
                    %>
                    <br>
                    <% 
                }
            } catch(NumberFormatException e){
                out.println("");
            }
        %>
        </h2>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sum</title>
    </head>
    <body>
        
        <h1>Insert two numbers:</h1>
        <form action="" method="get">
            <input type="text" name="x1" placeholder="Type the first number:"/>
            <input type="text" name="x2" placeholder="Type the second number:"/>
            <input type="submit" value="ok"/>
        </form>
        
        <h1>The sum of your numbers is: </h1>
        <h1> <%
            String x1 ="1", x2 = "1";
            int x, y;
            
                
                x1 = request.getParameter("x1");
                x2 = request.getParameter("x2");
                
                try{
                x = Integer.valueOf(x1);
                y = Integer.valueOf(x2);
                out.print(x + y);
            } catch(NumberFormatException e){
                out.println("");
            }
            
        %> </h1>
    </body>
</html>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fibonacci Sequence</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf"%>
        <h2>Insert a number:</h2>

        <form>
            <input type="number" name="num" placeholder="Type a number:"/>
            <button type="submit">Ok!</button>
        </form>
        <br>
        <%
            int num, num0 = 0, num1 = 1, num2;
            
            out.println("Fibonacci Sequence:");
            
            try{
                num = Integer.valueOf(request.getParameter("num"));
                
                if(num == 1 || num == 2)
                    out.println(1);
                   
                for(int i = 1; i < num; i++){
                    if(num0 == 0)
                        out.println(1);
                        
                    num2 = num0 + num1;
                    num0 = num1;
                    num1 = num2;
                    
                    out.println(num2);
                }
            
            }catch(NumberFormatException e){
                out.println("");
            }
        %>
    </body>
</html>

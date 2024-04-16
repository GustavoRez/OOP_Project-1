<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Prime Number</title>
    </head>
    <body>
        <%@include file="WEB-INF/menu.jspf"%>
        <h2>Insert a number:</h2>
        <form>
            <input type="number" name="num" placeholder="Type here:"/>
            <button type="submit">Ok</button>
        </form>
        <br>
        <%
            int num, incr = 0;                        
            
            try{
            num = Integer.valueOf(request.getParameter("num"));
            for(int i = 1; i <= num; i++){
                if(num % i == 0 && num != i && i != 1)
                    incr += 1;
            }
            if(incr == 0)
                 out.println("Prime number!");  
            
            else if(incr != 0){
            out.println("Non-prime number!");
            %><br><%
            out.println("Divisors:");
                for (int i = 1; i <= num; i++){
                    if (num % i == 0){
                        out.println(i);
                    }
                }
            }
            else if(incr != 0)
                 out.println();               
                
            
            } catch(NumberFormatException e){
                out.println("");
            } catch(ArithmeticException e){
                out.println("");
            }
        %>
    </body>
</html>

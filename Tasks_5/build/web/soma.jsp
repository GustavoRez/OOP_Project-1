<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sum</title>
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
            int num;                        
            
            try{
            num = Integer.valueOf(request.getParameter("num"));
            
            out.println("The sum of all numbers between 1 and " + num + " is: " + (num / 2) * (num + 1));
            
            } catch(NumberFormatException e){
                out.println("");
            }
        %>
    </body>
</html>

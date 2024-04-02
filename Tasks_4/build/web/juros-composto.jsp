<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.Math"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            table, th, td {
            border:1px solid black;
        }
</style>
    </head>
    <body>
        <%@include file="WEB-INF/JSPF/menu.jspf"%>
        
        <h1>Juros Composto: </h1>
        
        <form action="" method="get">
            <input type="number" step="0.01" name="capIni" placeholder="Capital Inicial:"/>
            <input type="number" step="0.01" name="juros" placeholder="Taxa de Juros:"/>
            <input type="number" name="tempoAplic" placeholder="Tampo de Aplicação:"/>
            <input type="submit" value="ok"/>
        </form>
        
            <%
            try{
                double cap, jur, montante;
                int apli;
                
                cap = Double.valueOf(request.getParameter("capIni"));
                jur = Double.valueOf(request.getParameter("juros"));
                apli = Integer.valueOf(request.getParameter("tempoAplic"));
                %>
                <br>
                
            <table style="width:45%">
                <tr>
                    <th>Mês</th>
                    <th>Montante</th>
                </tr>
                
                <%
                for (int i = 1; i < apli; i++){
                    montante = cap * Math.pow((1 + jur), apli);
                    out.println(<tr>);
                    out.println(<th>);
                }
                
                } catch(NullPointerException e){
                    out.println(" ");
                }
            
            
            %>
        
        </table>
    </body>
</html>

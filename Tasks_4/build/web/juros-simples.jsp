<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/JSPF/menu.jspf"%>

        <h1>Juros Simples Mensal:</h1>
        
        <form action="" method="get">
            <input type="number" step="0.01" name="capIni" placeholder="Capital Inicial:"/>
            <input type="number" step="0.01" name="juros" placeholder="Taxa de Juros:"/>
            <input type="number" name="tempoAplic" placeholder="Tampo de Aplicação:"/>
            <input type="submit" value="ok"/>
        </form> 
        
        <h2>
            <%
            try{
                double cap, jur;
                int apli;
                
                cap = Double.valueOf(request.getParameter("capIni"));
                jur = Double.valueOf(request.getParameter("juros"));
                apli = Integer.valueOf(request.getParameter("tempoAplic"));
                
                double jurSimp = cap + cap * (jur/100) * (apli / 12);
                
                out.println("Taxa de juros = " + String.format("%.0f", jur) + "%");%><br><br><%
                out.println("Tempo de aplicação = " + apli + " meses");%><br><br><%
                    
                out.println(String.format("Lucro obtido: R$ %.2f ", (jurSimp - cap)));%><br><br><% 
                out.println(String.format("Valor total: R$ %.2f", jurSimp)); 
                
                } catch(NullPointerException e){
                    out.println(" ");
                }
            
            
            %>
        </h2>


    </body>
</html>

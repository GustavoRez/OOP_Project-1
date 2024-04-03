<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.lang.Math"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style>
            /*input{                
                background: grey;
                color: black;                                
            }
            input::placeholder{   
                color: black;                                
            }*/
            table, th, td {
                border:1px solid black;
            }
            table{
                width:45%;
            }
            /*#info{
                position: fixed;
                top:30%;
                left:60%;
                padding: 12px 8px;
                background-color: grey;
            }*/
                </style>
            </head>
            <body <!--style="background: grey"-->
                <%@include file="WEB-INF/JSPF/menu.jspf"%>

                <h1>Juros Composto Mensal: </h1>

                <form action="" method="get">            
                    <input type="number" step="0.01" name="capIni" placeholder="Capital Inicial:"/>
                    <input type="number" step="0.01" name="juros" placeholder="Taxa de Juros:"/>
                    <input type="number" name="tempoAplic" placeholder="Tampo de Aplicação:"/>
                    <input type="submit" value="ok"/>
                </form>


                <%
                try{
                    double cap, jur, montante = 1;
                    int apli;
                
                    cap = Double.valueOf(request.getParameter("capIni"));
                    jur = Double.valueOf(request.getParameter("juros"));
                    apli = Integer.valueOf(request.getParameter("tempoAplic"));
                %>
                <br>

                <table>
                    <tr>
                        <th>Mês</th>
                        <th>Montante</th>
                    </tr>

                    <%
                    for (double i = 1; i <= apli; i++){
                        montante = cap * Math.pow((1 + (jur/100)), (i / 12));
                    %><tr><%
                        %><th><%
                        out.println(String.format("%.0f", i));
                            %></th><%
                        %><th><%
                        out.println(String.format("%.2f",montante));
                            %></th>
                    </tr>

                    <% } %>
                </table>
                <br>
                <h2 id="info">
                    Informações:<br><br>
                    <%
            out.println("Taxa de juros = " + String.format("%.0f", jur) + "%");%><br><br><%
            out.println("Tempo de aplicação = " + apli + " meses");%><br><br><%
            out.println(String.format("Lucro obtido: R$ %.2f ", (montante-cap)));%><br><br><% 
                    out.println(String.format("Valor total: R$ %.2f", montante)); 
            
                } catch(NullPointerException e){
                    out.println(" ");
                }
            
                    %>
                </h2>


            </body>
        </html>

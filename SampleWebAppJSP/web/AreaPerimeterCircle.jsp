<%-- 
    Document   : AreaPerimeterCircle
    Created on : Sep 27, 2024, 3:51:58 PM
    Author     : sun watcha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result Page</title>
    </head>
    <body>
        <%
            String btn = request.getParameter("btn");
            double radius = Double.parseDouble(request.getParameter("input-radius"));

            double result = 0;
            if (btn.equals("Area")) {
                result = Math.PI * radius * radius;
            } else {
                result = 2 * Math.PI * radius;
            }
        %>

        <h1>For circle with radius = <% out.print(radius);%></h1>
        <h1><% out.print(btn);%> is <% out.print(result);%></h1>
    </body>
</html>

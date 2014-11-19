<%-- 
    Document   : index
    Created on : Nov 18, 2014, 2:21:58 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%  for (Cookie cookie
            : ((HttpServletRequest) pageContext.getRequest()).getCookies()) {
        if (cookie.getName().equals("user_email")) {
            response.sendRedirect("landing.jsp");}
    }%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/superhero/bootstrap.min.css" rel="stylesheet">
        <title>Whirlwind</title>
    </head>
    <body>
        <div class="container">
            <h3>Sabina's whirlwind project</h3>
            <form action="check.jsp" method="post">
                <table>
                    <tr>
                        <td>Email:</td>
                        <td> <input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td> <input type="password" name="password" value="" /></td>
                    </tr>
                </table>
                <input type="submit" value="log in" />     
            </form>
        </div>
    </body>
</html>

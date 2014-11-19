<%-- 
    Document   : registration
    Created on : Nov 18, 2014, 5:45:00 PM
    Author     : Sabina
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/superhero/bootstrap.min.css" rel="stylesheet">
        <title>Whirlwind</title>
    </head>
    <body>
        <div class="container">           
            <h3>Register</h3>
            <form action="register.jsp" method="post">
                <table>
                    <tr>
                        <td>Email:</td>
                        <td> <input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td> <input type="password" name="password" value="" /></td>
                    </tr>
                    <tr>
                        <td>Username:</td>
                        <td> <input type="text" name="username" value="" /></td>
                    </tr>
                </table>
                <input type="submit" value="log in" />     
            </form>
        </div>
    </body>
</html>

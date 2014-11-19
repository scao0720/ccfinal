<%-- 
    Document   : signout
    Created on : Nov 18, 2014, 4:39:32 PM
    Author     : Sabina
--%>
 <%  Cookie loginCookie = new Cookie("user_email", "");
            loginCookie.setPath("/");
            loginCookie.setMaxAge(0);
            response.addCookie(loginCookie);
            response.sendRedirect("index.jsp");%>
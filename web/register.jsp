<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ccfinal"
                   user="root"  password=""/>
<%-- 
    Document   : register
    Created on : Nov 18, 2014, 5:55:09 PM
    Author     : Sabina
--%>

<sql:update var="result">
    INSERT INTO users (email, password, username)
    VALUES ("${param.email}", "${param.password}", "${param.username}")
</sql:update>
        
<%  Cookie loginCookie = new Cookie("username", pageContext.getRequest().getParameter("username"));
            loginCookie.setPath("/");
            response.addCookie(loginCookie);
            response.sendRedirect("landing.jsp");%>
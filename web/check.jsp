<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource driver="com.mysql.jdbc.Driver"
                   url="jdbc:mysql://localhost/ccfinal"
                   user="root"  password=""/>
<%-- 
    Document   : check
    Created on : Nov 18, 2014, 12:45:26 PM
    Author     : Sabina
--%>

<sql:query var="result">
    SELECT password from users where email = "${param.email}"
</sql:query>

<c:choose>
    <c:when test="${param.password == result.getRows()[0].password}">
        <%  Cookie loginCookie = new Cookie("user_email", pageContext.getRequest().getParameter("email"));
            loginCookie.setPath("/");
            response.addCookie(loginCookie);
            response.sendRedirect("landing.jsp");%>
    </c:when>
    <c:otherwise>
        <% response.sendRedirect("index.jsp");%>
    </c:otherwise>
</c:choose>
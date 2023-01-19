
<%@page contentType="text/html" pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/table.css"/>
    </head>
    <body>
        <h1>Full Database</h1>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" var="db" url="jdbc:mysql://localhost:3306/student" user="root" password="123456" />
<sql:query var="rs" dataSource="${db}">select * from data</sql:query>
 
<table>
         <tr>
             <th>Sr Number</th>
             <th>First Name</th>
             <th>last Name</th>
             <th>Email</th>
             <th>Password</th>
             <th>Registered Time</th>
         </tr> 
<c:forEach items="${rs.rows}" var="row">
    <tr>
            <td><c:out value="${row.id}"></c:out></td>
             <td><c:out value="${row.firstname}"></c:out></td>
             <td><c:out value="${row.lastname}"></c:out></td>
             <td><c:out value="${row.email}"></c:out></td>
             <td><c:out value="${row.password}"></c:out></td>
             <td><c:out value="${row.registredtime}"></c:out></td>
         </tr>
</c:forEach>
     </table>
 
    </body>
</html>

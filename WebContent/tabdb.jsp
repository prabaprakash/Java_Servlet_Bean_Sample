<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
	
	<sql:setDataSource var="dbs" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/test"
     user="root"  password=""/> 
     
    <c:set var="query" value="select * from tests" />

	<sql:query var="result"  dataSource="${dbs}" sql="select * from tests" />
	
	<c:forEach var="row" items="${result.rows}">
	
	<c:out value="${row.name}"/>
	
	</c:forEach>
</body>
</html>
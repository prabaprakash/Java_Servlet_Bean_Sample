<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="formHandler" class="Beans.Profile" scope="session"/>
	<%=formHandler.getName()%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<c:out value="${sessionScope.re}" />
	Error
	
	 <c:forEach var="empBean" items="${sessionScope.ls}">
                <c:out value="${empBean.name}"/>
    </c:forEach>
</body>
</html>
<%@page
	import="com.sun.org.apache.xalan.internal.xsltc.runtime.Parameter"%>
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
	<c:catch var="c">
		<fmt:parseNumber var="var3" value="${param.num}" integerOnly="true" />
		<c:out value="${param.num}" />
	</c:catch>
	<c:set var="res" value="${c}" scope="request"></c:set>
	<c:set var="re" value="${c}" scope="session"></c:set>
	<c:out value="${requestScope.res}" />
	<c:if test="${c !=NULL}">
		<c:redirect url="/error.jsp" />
	</c:if>

</body>
</html>
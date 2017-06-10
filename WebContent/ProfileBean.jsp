<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@ page
		import="java.util.Collection,
                 java.util.ArrayList"%>
	<jsp:useBean id="formHandler" class="Beans.Profile" scope="session" />
	<jsp:setProperty name="formHandler" property="*" />
	<pre>
    Name  <%=formHandler.getName()%>
    Regno <jsp:getProperty name="formHandler" property="rollno" />
    Course <jsp:getProperty name="formHandler" property="course" />
    Cgpa <jsp:getProperty name="formHandler" property="cgpa" />
    </pre>
    
    
	<jsp:useBean id="ls" type="java.util.List" class="java.util.ArrayList" scope="session"/>
	<%
	 ls.add(formHandler);
	%>
	<%
		response.sendRedirect("error.jsp");
	%>
	

</body>
</html>
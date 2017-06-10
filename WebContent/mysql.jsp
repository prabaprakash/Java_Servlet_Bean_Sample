<%@page import="javax.xml.stream.events.StartDocument"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page   import="com.mysql.jdbc.Driver,java.sql.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
//mysql driver
String driver = "com.mysql.jdbc.Driver";

//the "url" to our DB, the last part is the name of the DB
String url = "jdbc:mysql://localhost/test";
Class.forName( driver );

//initialize the Connection, with our DB info ...
Connection con = DriverManager.getConnection( url, "root", "root" );


Statement stat = con.createStatement();

String query="select * from tests";
ResultSet rs=stat.executeQuery(query);

/*
String a="insert into tests value(?)";
stat.executeUpdate(a);
PreparedStatement p=con.prepareStatement(a);
p.setInt(1, 40)
*/
while(rs.next())
{
	out.println(rs.getString(2));
}

%>


</body>
</html>
<%@ page import = "java.sql.*" %>
<%@ page import = "user.EmptyClass" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HI there</title>
</head>
<body>
	<%
		EmptyClass ec = new EmptyClass();
		out.println(ec.getA());
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://127.3.124.2:3306/isapickup","adminHzCdu2S","1_XQ_VWFqaXk");
			Statement stmt = con.createStatement();
			stmt.executeUpdate("CREATE TABLE pickUp (NAME VARCHAR(20));");
		}
		catch(SQLException e){
			e.printStackTrace();
		}
		catch(ClassNotFoundException cnfe){
			cnfe.printStackTrace();
		}
	%>
</body>
</html>
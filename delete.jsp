<%@ page  language="java" import="java.sql.*" %>

<html>
	<body>
		<%
			String mob = request.getParameter("contact_mob");
		         try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact_manager","root","");
			Statement smt =con.createStatement();
			smt.executeUpdate("delete from contact_info where mob='"+mob+"'");
			con.close();
			
			response.sendRedirect("all_contacts.jsp");
		         }
		         catch( Exception ex) { out.print(ex); }
		%>
	</body>
</html>
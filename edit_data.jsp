<%@ page  language="java" import="java.sql.*" %>

<html>
	<body>
		<%
			String name = request.getParameter("name");
			String mob = request.getParameter("mob");
			String email = request.getParameter("email");
			String addr = request.getParameter("addr");
			String grup = request.getParameter("grup");
			String dob = request.getParameter("dob");
			String fav = request.getParameter("fav");
			try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact_manager","root","");
			Statement smt =con.createStatement();
			smt.executeUpdate("update contact_info set name='"+name+"', mob='"+mob+"', email='"+email+"', addr='"+addr+"', grup='"+grup+"', dob='"+dob+"', fav='"+fav+"' where mob='"+mob+"' ");
			con.close();
			response.sendRedirect("all_contacts.jsp");
		    }
		    catch( Exception ex) { out.print(ex); }
		%>
	</body>
</html>
<%@ page  language="java" import="java.sql.*" %>

<html>
	<body>
		<%
			String name=request.getParameter("name");
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
				smt.executeUpdate("insert into contact_info(name, mob, email, addr, grup, dob, fav) values('"+name+"','"+mob+"','"+email+"','"+addr+"','"+grup+"','"+dob+"','"+fav+"')");
				con.close();
				response.sendRedirect("index.html");
		    }
		     catch( Exception ex) { out.print(ex); }
		%>
	</body>
</html>
<%@ page  language="java" import="java.sql.*" %>

<html>

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Contact Manager</title>
        <meta name="description" content="An interactive getting started guide for Brackets.">
        <link rel="icon" type="x-icon/image" href="images/ht.jpg">
    </head>
    
    <body>
        <section style="border: 3px solid black;width: 100%; height: 100%;">
        <table>
           <tr>
               <td style="border: 2px solid black; width: 100px;height: 150px">
                   <a href="index.html"><image src="images/ht.jpg" style="height: 150px"></image></a>
               </td>
               <td style="border: 2px solid black;  width: 1300px;height: 150px;background-color: darkgray">
                   <h1 style="font-size: 200%;font-family: cursive;color:black;text-align:center">*****<sub>**</sub>**<sup>**</sup>**<sub>**</sub>CONTACT MANAGER SYSTEM<sub>**</sub>**<sup>**</sup>**<sub>**</sub>*****</h1>
               </td>
            </tr>
            <tr>
                <td colspan="2" style="border: 1px solid black">
                    <marquee scrollamount="10" direction="left" onmouseout="start()" onmouseover="stop()">
                        <h3 style="font-family:serif; font-size: 140%">
                            <mark style="background-color:azure;color: blue">Love, Friendship, Networking - these all are critical connections and the foundation of a healthy, happy life.</mark>
                        </h3>
                    </marquee>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <center>
                        <table style="width:100%; border: 1px solid black;">
                            <tr style="background-color: darkgray; text-align:left">
                                <th>NAME</th>
                                <th>MOBILE NO.</th>
                                <th>EMAIL</th>
                                <th>ADDRESS</th>
                                <th>GROUP</th>
                                <th>BIRTH DATE</th>
                                <th>FAVOURITE</th>
                                <th>DELETE</th>
                                <th>EDIT</th>
                            </tr>
		                    <%	
		                        try{
			                        Class.forName("com.mysql.jdbc.Driver");
			                        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact_manager","root","");
			                        Statement smt =con.createStatement();
			                        ResultSet rs=smt.executeQuery("select * from contact_info order by name");
			                        while(rs.next())
			                        { %>
				                    <tr>
					                    <td><%= rs.getString(1) %></td>				
					                    <td><%= rs.getString(2) %></td>				
					                    <td><%= rs.getString(3) %></td>				
					                    <td><%= rs.getString(4) %></td>				
					                    <td><%= rs.getString(5) %></td>
				 	                    <td><%= rs.getString(6) %></td>
					                    <td><%= rs.getString(7) %></td>
					                    <td><a href="delete.jsp?contact_mob=<%= rs.getString(2)%>">Delete</a></td>
					                    <td><a href="edit.jsp?contact_mob=<%= rs.getString(2)%>">Edit</a></td>
				                    </tr>		
			                        <% }			
		                        }
		                        catch( Exception ex) { out.print(ex); }
		                    %>
		                </table>
	                </center>
                </td>
            </tr>
        </table>
        </section>
    </body>
</html>
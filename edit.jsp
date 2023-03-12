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
                   <image src="images/ht.jpg" style="height: 150px"></image>
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
                      <form action="edit_data.jsp">
                      <table style="border: 1px solid black;width:60%">
                      <%	
		                    try{
			                      String mob = request.getParameter("contact_mob");
			                      Class.forName("com.mysql.jdbc.Driver");
			                      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/contact_manager","root","");
			                      Statement smt =con.createStatement();
			                      ResultSet rs=smt.executeQuery("select * from contact_info where mob='"+mob+"'");
			                      if(rs.next())
			                      { %>
                            <tr>
                                <td colspan="2" style="border: 1px solid black">
                                    <center><h1 style="font-size: 130%">Edit Details</h1></center>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: 1px solid black;text-align:left;font-size: 110%">
                                     Name :
                                </td> 
                                <td style="border: 1px solid black">
                                    <input type="text" name="name" value="<%= rs.getString(1) %>" style="font-size: 110%"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: 1px solid black;text-align:left;font-size: 110%">
                                    Mobile no. :
                                </td> 
                                <td style="border: 1px solid black">
                                    <input type="tel" value="<%= rs.getString(2) %>" name="mob" style="font-size: 110%"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: 1px solid black;text-align:left;font-size: 110%">
                                     Email :
                                </td> 
                                <td style="border: 1px solid black">
                                    <input type="email" value="<%= rs.getString(3) %>" name="email" style="font-size: 110%"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: 1px solid black;text-align:left;font-size: 110%">
                                     Address :
                                </td> 
                                <td style="border: 1px solid black">
                                    <input type="text" value="<%= rs.getString(4) %>" name="addr" style="font-size: 110%"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: 1px solid black;text-align:left;font-size: 110%">
                                     Group :
                                </td> 
                                <td style="border: 1px solid black">
                                    <select name="grup" style="font-size: 105%">
                                       <option value="<%= rs.getString(5) %>">select</option>
                                       <option value="Colleagues">Colleagues</option>    
                                       <option value="Family">Family</option>
                                       <option value="Friends">Friends</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: 1px solid black;text-align:left;font-size: 110%">
                                    Birth Date :
                                </td> 
                                <td style="border: 1px solid black">
                                    <input type="date" value="<%= rs.getString(6) %>" name="dob" style="font-size: 110%"/>
                                </td>
                            </tr>
                            <tr>
                                <td style="border: 1px solid black;text-align:left;font-size: 110%">
                                    Favorite:
                                </td> 
                                <td style="border: 1px solid black">
                                    <input type="radio" name="fav" value="Yes" >Yes
                                    <input type="radio" name="fav" value="No">No
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="border: 1px solid black;text-align:center;font-size: 110%">
                                    <input type="submit" name="" value="save" style="font-size: 104%; background-color: orange">
                                </td>
                            </tr>
                            <%  }
                        }
                        catch(Exception ex)
                        {   out.print(ex);  }
                        %>
                        </table>
		                </form>
	                </center>
                </td>
            </tr>
        </table>
        </section>
    </body>
</html>
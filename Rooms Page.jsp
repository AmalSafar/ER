<%-- 
    Document   : Rooms Page
    Created on : 15-Mar-2021, 00:54:01
    Author     : amals
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>         body {
  background-image: url("Back3.png");
   background-attachment:fixed;
  background-size:cover;
}   
ul {
 
  list-style-type: none;
  margin: 0;
  padding: 10px;
  overflow: hidden;
  background-color: white;
 
}
li {
  float: left;
}

li a {
  border-radius: 25px;
  display: block;
  color: Black;
  font-size: 20px;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  margin-left: 20px;
}

li a:hover {
  background-color: #C5C2C2;
}
  </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Emergency Room</title>
    </head>
    <body>
         <ul>
            <li><a href="Home Page.jsp">Home</a></li>
            <li><a href="Doctors Page.jsp">Doctors</a></li>
            <li><a href="Patient Page.jsp">Patients</a></li>
            <li><a href="Rooms Page.jsp">Rooms</a></li>
         <li style="float:right; margin-right:1px;"><img  src="3201525-200.png" width="55" height="55"></li>
  
        </ul>
        
        <br>
        
        <a href="AddRoom.jsp" style="margin-left: 60px;font-size:1.3em; color:white; text-align: center">Add new Room</a>
        <input style="margin-left: 10px" type="submit" value="Update" name="updateRoom" />
        <input style="margin-right: 10px" type="submit" value="Delete" name="DeleteRoom" />
        <br>
        
            <%
               Controller.ER_Controller rooms = new Controller.ER_Controller();
               ResultSet result = rooms.getAllRooms();
              %>
             
              <br>
            <table style="margin-right:auto; margin-left:auto; background-color:white; width: 95%; border-collapse: collapse;" border="2" width="2">
                <thead>
                    <tr>
                        <th> Room ID </th>
                        <th> Room Name </th>
                        <th> Number of Beds </th>
                        <th> Delete</th>
                        <th> Edit </th>
                    </tr>
                </thead>
                <tbody>
                   
                    
                      <% while(result.next()) { %>
                      <tr>
                          <% String ID = result.getString("ID");%>
                          <td><%out.print(ID);%></td>
                          <% String beds = result.getString("numberOfBeds");%>
                          <td><%out.print(beds);%></td>
                          <% String name = result.getString("name");%>
                          <td><%out.print(name);%></td>
                          <td><input type="checkbox" name="delete" value="ON" /> </td>
                        <td> <input type="checkbox" name="edit" value="ON" /> </td>
                      </tr>
                      <% } %>                 
                </tbody>
            </table>
                    
                <br>
                
       
       
    </body>
</html>

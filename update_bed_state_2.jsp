<%-- 
    Document   : update_brd_state_2
    Created on : 15/04/2021, 03:58:26 م
    Author     : rakha
--%>


<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function selectedstate(){
                var d= document.getElementById("ddselect");
                var textstate=d.options[d.selectedIndex].text;
                document.getElementById("statevalue").value=textstate;
            }
        </script>
        <style>
            body {
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
    </head>
    <body>
        <br>
        <br>
        <br>
        <%
            String ID = request.getParameter("ID");
            DB.DB_Connection beds = new DB.DB_Connection();
            ResultSet result = beds.getBedsInRoom(Integer.parseInt(ID));
        %>
        <table style="margin-right:auto; margin-left:auto; background-color:white; width: 95%; border-collapse: collapse;" border="2" width="2">
            <thead>
                <tr>
                    <th> Bed ID </th>
                    <th> State </th>  
                    <th> Room ID </th>  
                    <th> Update Bed </th>
                </tr>
            </thead>
            <tbody>
                <%while (result.next()) {%>
                <tr>
                    <% String id = result.getString("ID");%>
                    <td><%out.print(id);%></td>
                    <% String state = result.getString("state");%>
                    <td><%out.print(state);%></td>
                  
                    <% String room = result.getString("RoomID");%>
                    <td><%out.print(room);%></td>
                    <td>
                        <select id="idselected">  
                            <option value = "">select</option>
                            <option value = "Available">Available</option>
                            <option value = "Not Available">Not Available</option>
                        </select>  
                       
                        <button onclick='window.location ="UpdateBedStateCommand.jsp?ID=<%=id%>&RoomID=<%=room%>&state=" + document.getElementById("idselected").value;'>Update State</button>
                    </td>
                </tr>
                <%}%>                     
            </tbody>

        </table>                 
    </body>
</html>

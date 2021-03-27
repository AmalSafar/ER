<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in</title>
    </head>
    <body>
          
        <form name="login_form" action="display.jsp" method="POST">
            <table border="0">
  
                <tbody>
                    <tr>
                        <td>ID</td>
                        <td><input type="number" name="ID" value="" size="10" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" size="8" /></td>
                    </tr>
                        <tr>
                        <td>Role</td>
                        <td><select name="role">
                                <option>Choose</option>
                                <option>Doctor</option>
                                <option>Nurse</option>
                                <option>Patient</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" name="Log in" /></td>
                        <td><input type="submit" value="Clear" name="Clear" /></td>
                    </tr>
                </tbody>
            </table>

        </form>

    </body>
</html>

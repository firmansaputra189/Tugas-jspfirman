<%-- 
    Document   : login
    Created on : Nov 30, 2021, 5:51:39 AM
    Author     : user
--%>
<%@include file="/WEB-INF/jsp/include.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Aplikasi Mahasiswa</title>
    </head>
    <body>
        <form method="POST" modelAttribute="emp" >
            <table align="center">
                <tr>
                    <td>Username</td>
                    <td><input type="text" name="username"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="password"></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="submit" value="Login"></td>
                </tr>
                <tr>
                    <td colspan="2">${message}</td>
                </tr>
                
                
            </table>
            
        </form>
    </body>
</html>

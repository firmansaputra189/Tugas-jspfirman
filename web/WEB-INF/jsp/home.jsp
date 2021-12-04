<%-- 
    Document   : home
    Created on : Nov 30, 2021, 6:40:24 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@include file="include.jsp" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <h1>Halaman Admin-KAS PERUSAHAAN</h1>
        cek DB: ${msg}
        <p>
        <table class="table table-striped table-bordered">
            <tr class="thead-dark">
                <th>ID</th>
                <th>Nim</th>
                <th>Nama</th>
                <th>Bulan</th>
                <th>Pembayaran</th>
                <th>Action</th>
            </tr>
            <c:forEach items="${listMahasiswa}" var="mhs"> 
                <tr>
                    <td>${mhs.id}</td>
                    <td>${mhs.nim}</td>
                    <td>${mhs.nama}</td>
                    <td>${mhs.bulan}</td>
                    <td>${mhs.pembayaran}</td>
                    <td>
                        <button class="btn btn-primary"
                                onclick="window.location.href='mahasiswa-form.html?action=edit&id=${mhs.id}'">
                        Edit    
                        </button>
                        <button class="btn btn-danger"
                                onclick="window.location.href='mahasiswa-form.html?action=delete&id=${mhs.id}'">
                        Delete    
                        </button>
                    </td>
                </tr>
            </c:forEach>
        </table>    
        </p>
        <p>
            <button class="btn btn-primary" onclick="window.location.href='mahasiswa-form.html'">
                Add Mahasiswa
            </button>
        </p>
    </body>
</html>
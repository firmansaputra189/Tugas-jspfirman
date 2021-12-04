<%-- 
    Document   : mahasiswa-form
    Created on : Dec 1, 2021, 9:51:07 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contaner"
            <h2>Data Mahasiswa ${message}</h2>
            <div class="row">
                <div class="col-md-6">
                    <form action="mahasiswa-form.html" modelAttribute="mhs" method="POST"
                        <div class="form-group">
                            <input type="text" class="form-control" name="nim" placeholder="Nim" value="${mhs.nim}"/>
                        </div> 
                        <div class="form-group">
                            <input type="text" class="form-control" name="nama" placeholder="Nama" value="${mhs.nama}"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="bulan" placeholder="Bulan" value="${mhs.bulan}"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="pembayaran" placeholder="Pembayaran" value="${mhs.pembayaran}"/>
                        </div>
                        <input type="hidden" name="id" value="${mhs.id!=null?mhs.id:0}"/>
                        <button type="submit" class="btn btn-primary">Save</button>
                    </form>
                </div>        
            </div>
            <a href="${pageContext.request.contextPath}/home.html"/>Back</a>
        </div>
    </body>
</html>
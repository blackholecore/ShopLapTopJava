<%-- 
    Document   : ManagerProduct
    Created on : Apr 18, 2022, 6:30:36 PM
    Author     : Khoa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
     <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
            .container{
                width: 1245px;
            }
            
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b>Product</b></h2>
                        </div>
                        <div class="col-sm-6">
                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Product</span></a>
                           						
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>
                                <span class="custom-checkbox">
                                    <input type="checkbox" id="selectAll">
                                    <label for="selectAll"></label>
                                </span>
                            </th>
                            <th>Mã</th>
                            <th>Tên </th>
                            <th>Hình</th>
                            <th>Giá bán</th>
                            <th>CPU</th>
                            <th>GPU</th><!-- comment -->
                            <th>RAM</th>
                            <th>Hardware</th>
                            <th>Pin</th>
                            <th>Màn hình</th>
                            <th>số lượng tồn</th>
                            <th>Actions</th>
                            
                 </tr>
                        
                    </thead>
                  
                        <c:forEach items="${listP}" var="o">
                             <tbody>
                            <tr>
                                <td>
                                    <span class="custom-checkbox">
                                        <input type="checkbox" id="checkbox1" name="options[]" value="1">
                                        <label for="checkbox1"></label>
                                    </span>
                                </td>
                                <td>${o.malaptop}</td>
                                <td>${o.tenlaptop}</td>
                                <td>
                                    <img src="${o.hinh}">
                                </td>
                                <td>${o.giaban}</td>
                                <td>${o.cpu}</td>
                                <td>${o.gpu}</td>
                                <td>${o.ram}</td>
                                <td>${o.hardware}</td>
                                <td>${o.pin}</td>
                                <td>${o.manghing}</td>
                                <td>${o.soluong}</td>
                                
                                <td>
                                    <a href="LoadControll?pmalaptop=${o.malaptop}"  class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="DeleteControll?pmalaptop=${o.malaptop}" class="delete" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                </td>
                            </tr>
                            </tbody>
                        </c:forEach>
                   
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                    <ul class="pagination">
                        <li class="page-item disabled"><a href="#">Previous</a></li>
                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                        <li class="page-item active"><a href="#" class="page-link">3</a></li>
                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Edit Modal HTML -->
        <div id="addEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="AddControll" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Tên Laptop</label>
                                <input name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình</label>
                                <input name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Giá bán</label>
                                <input name="price" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>CPU</label>
                                <input name="CPU" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>GPU</label>
                                <input name="GPU" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>RAM</label>
                                <input name="RAM" type="text" class="form-control" required>
                             </div>
                            <div class="form-group">
                                <label>Hardware</label>
                                <input name="hardware" type="text" class="form-control" required>
                             </div><!-- comment -->
                              <div class="form-group">
                                <label>Pin</label>
                                <input name="pin" type="text" class="form-control" required>
                            </div>
                              <div class="form-group">
                                <label>Màn hình</label>
                                <input name="manhinh" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea name="mota" class="form-control" required></textarea>
                            </div>
                           <div class="form-group">
                                <label>Trạng thái</label>
                                <input name="trangthai" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>Số lượng tồn</label>
                                <input name="slt" type="text" class="form-control" required>
                            </div>
                             
                            <div class="form-group">
                                <label>Hãng Laptop</label>
                                <select name="hang" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${ListH}" var="o">
                                        <option value="${o.mahang}">${o.tenhang}</otption>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        
        
        
        
        <!-- Edit Modal HTML -->
        <div id="editEmployeeModal" class="modal fade">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form>
                        <div class="modal-header">						
                            <h4 class="modal-title">Edit Employee</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>
                        <div class="modal-body">					
                            <div class="form-group">
                                <label>Tên Laptop</label>
                                <input value="${detail.tenlaptop}" name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Hình</label>
                                <input value="${detail.hinh}" name="image" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Giá bán</label>
                                <input value="${detail.giaban}"name="price" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>CPU</label>
                                <input value="${detail.cpu}" name="CPU" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>GPU</label>
                                <input value="${detail.gpu}" name="GPU" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>RAM</label>
                                <input value="${detail.ram}" name="RAM" type="text" class="form-control" required>
                             </div>
                            <div class="form-group">
                                <label>Hardware</label>
                                <input value="${detail.hardwave}" name="hardware" type="text" class="form-control" required>
                             </div><!-- comment -->
                              <div class="form-group">
                                <label>Pin</label>
                                <input value="${detail.pin}" name="pin" type="text" class="form-control" required>
                            </div>
                              <div class="form-group">
                                <label>Màn hình</label>
                                <input value="${detail.manghing}" name="manhinh" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Mô tả</label>
                                <textarea value="${detail.mota}" name="mota" class="form-control" required></textarea>
                            </div>
                           <div class="form-group">
                                <label>Trạng thái</label>
                                <input value="${detail.trangthai}" name="trangthai" type="text" class="form-control" required>
                            </div>
                             <div class="form-group">
                                <label>Số lượng tồn</label>
                                <input value="${detail.soluong}" name="slt" type="text" class="form-control" required>
                            </div>
                             
                            <div class="form-group">
                                <label>Hãng Laptop</label>
                                <select name="hang" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${ListH}" var="o">
                                        <option value="${o.mahang}">${o.tenhang}</otption>
                                    </c:forEach>
                                </select>
                            </div>

                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-info" value="Save">
                        </div>
                    </form>
                </div>
            </div>
        </div>
                            
        <!-- Delete Modal HTML -->
        <a class="navbar-brand" href="HomeControll" type="button" class="btn btn-success" >Exit</a>
        <script src="js/manager.js" type="text/javascript"></script>
        <script>
               
        </script>
    </body>
</html>

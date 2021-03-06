<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
 
<title>Insert title here</title>
</head>
<body>
 
<jsp:include page="navbar.jsp"></jsp:include>
  <div class="container">
  
   <b><h2>List of Products</h2></b><br><br>
   
    <table class="table table-hover" >
    
      <thead>
      
       <tr><th>Product Name</th><th>Category</th><th>Price</th><th>Quantity</th></tr>
       
      </thead>
      <tbody>
        <c:forEach items="${products}" var="p">
        <c:url value="/resources/images/${p.id}.png" var="imageUrl"></c:url>
        
        <c:url value="/viewproduct/${p.id}" var="viewUrl" ></c:url>
        
        <c:url value="/deleteproduct/${p.id}" var="deleteUrl"></c:url>
        
        <c:url value="/geteditform/${p.id}" var="editUrl"></c:url>
        
         <tr>
          <td> <img src="${imageUrl}" style="width:50px; height:50px"> </td>
          <td><a href="${viewUrl}">${p.productname}</a></td> 
          
          <td>${p.category.categoryname}</td>
          
          <td>${p.price}</td><td>${p.quantity}</td>
          
          <td>  <a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign"></span> </a>  </td>
            
          <td>  <a href="${deleteUrl}"><span class="glyphicon glyphicon-trash" ></span>  </a>  </td> 
          
          <td>  <a href="${editUrl}"><span class="glyphicon glyphicon-pencil" ></span></a>  </td> 
           
         </tr>
        </c:forEach>
      </tbody>
    </table>
  </div> <!-- End container -->
  
</body>
</html>
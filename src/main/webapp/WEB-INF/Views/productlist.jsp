<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
 <%@ include file="navbar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 

  <div class="container">
   <b><h2>List of Products</h2></b><br><br>
    <table class="table table-striped">
      <thead>
       <tr><th>Product Name</th><th>Price</th><th>Quantity</th><th>Description</th></tr>
      </thead>
      <tbody>
        <c:forEach items="${products}" var="p">
        <c:url value="/viewproduct/${p.id}" var="viewUrl" ></c:url>
        <c:url value="/deleteproduct/${p.id}" var="deleteUrl"></c:url>
         <tr>
          <td><a href="${viewUrl}">${p.productname}</a></td> 
          <td>${p.price}</td><td>${p.quantity}</td>
          <td>${p.description}</td>
          <td>
            <a href="${viewUrl}"><span class="glyphicon glyphicon-info-sign"></span> </a>
            <a href="${deleteUrl}"><span class="glyphicon glyphicon-trash" ></span> </a>
          </td>
         </tr>
        </c:forEach>
      </tbody>
    </table>
  </div>
  
</body>
</html>
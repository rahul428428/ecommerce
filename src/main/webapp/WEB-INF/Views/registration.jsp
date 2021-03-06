<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@  include file="navbar.jsp" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">s
<html>
<head>
 <meta name="viewport" content="width=device-width,initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Registration page</title>
</head>
<body>
   
<div class="container" >
 <div class="panel panel-warning">
   <div class="panel-heading">
     <h4>Sign up</h4>
   </div> <!-- end of panel-heading -->
   
   <div class="panel-body" style="padding-top:40px; height:100%;">
       
  <form:form action="savecustomer" method="post" modelAttribute="customer">
   <div class="col-sm-4"  >
     <h4><b> Customer Details : </b></h4> <br> <br>  
    <form:label path="firstname">First Name</form:label> <br>
    <form:input path="firstname" class="form-control"  /> 
    <form:errors path="firstname" cssStyle="color:red"></form:errors> <br> 
        
    <form:label path="lastname">Last Name</form:label> <br>
    <form:input path="lastname"   class="form-control"   /> 
     <form:errors path="lastname" cssStyle="color:red" ></form:errors>  <br>
         
    <form:label path="email">Email Address</form:label> <br>
    <form:input path="email"   class="form-control"   />
    <form:errors path="email" cssStyle="color:red" ></form:errors> 
    <p style="color:red">${duplicateEmail}</p>   
    <br>
    <form:label path="phone">Mobile number</form:label>  <br>
    <form:input path="phone"   class="form-control"  /> 
    <form:errors path="phone" cssStyle="color:red" ></form:errors>  <br>
           
    <form:label path="user.username">Username</form:label> <br>
    <form:input path="user.username"   class="form-control"  />
    <form:errors path="user.username" cssStyle="color:red" ></form:errors>
    <p style="color:red">${duplicateUser} </p>   <br>
          
    <form:label path="user.password">Password</form:label> <br>
    <form:input type="password" path="user.password"   class="form-control"  />
    <form:errors path="user.password" cssStyle="color:red" ></form:errors>   <br>
     
   </div> <!-- End col-sm-4 -->
   
   <div class="col-sm-4"> 
   <h4><b>  Billing Address : </b></h4> <br> <br>  
      <form:label path="billingAddress.streetname">Streetname</form:label>    <br>  
       <form:input path="billingAddress.streetname"  class="form-control"  /> 
        <form:errors path="billingAddress.streetname" cssStyle="color:red"></form:errors>  <br>
       
       <form:label path="billingAddress.apartmentnumber">Apartment Number</form:label> <br>
       <form:input path="billingAddress.apartmentnumber"  class="form-control"  />
        <form:errors path="billingAddress.apartmentnumber" cssStyle="color:red"></form:errors>   <br>
       
       <form:label path="billingAddress.city">City </form:label> <br>
       <form:input path="billingAddress.city"  class="form-control"  /> 
        <form:errors path="billingAddress.city" cssStyle="color:red"></form:errors>  <br>
       
       <form:label path="billingAddress.state">State</form:label> <br>
       <form:input path="billingAddress.state"  class="form-control"  />
        <form:errors path="billingAddress.state" cssStyle="color:red"></form:errors>   <br>
      
       <form:label path="billingAddress.country">Country</form:label> <br>
       <form:input path="billingAddress.country"  class="form-control"   /> 
        <form:errors path="billingAddress.country" cssStyle="color:red" ></form:errors>  <br>
      
       <form:label path="billingAddress.zipcode">Zipcode</form:label> <br>
       <form:input path="billingAddress.zipcode"  class="form-control"  /> 
        <form:errors path="billingAddress.zipcode" cssStyle="color:red"></form:errors>  <br>
    </div><!-- End col-sm-4 --> 
     
    <div class="col-sm-4"> 
      <h4><b>  Shipping Address : </b></h4>   <br> <br>  
      <form:label path="shippingAddress.streetname">Streetname</form:label>    <br>  
       <form:input path="shippingAddress.streetname"  class="form-control"  /> 
        <form:errors path="shippingAddress.streetname" cssStyle="color:red"></form:errors>  <br>
       
       <form:label path="shippingAddress.apartmentnumber">Apartment Number</form:label> <br>
       <form:input path="shippingAddress.apartmentnumber"  class="form-control"  />
       <form:errors path="shippingAddress.apartmentnumber" cssStyle="color:red"></form:errors>  <br>
       
       <form:label path="shippingAddress.city">City </form:label> <br>
       <form:input path="shippingAddress.city"  class="form-control"  />
       <form:errors path="shippingAddress.city" cssStyle="color:red"></form:errors>  <br>
       
       <form:label path="shippingAddress.state">State</form:label> <br>
       <form:input path="shippingAddress.state"  class="form-control"  /> 
        <form:errors path="shippingAddress.state" cssStyle="color:red"></form:errors>  <br>
     
         
       <form:label path="shippingAddress.country">Country</form:label> <br>
       <form:input path="shippingAddress.country"  class="form-control"  /> 
       <form:errors path="shippingAddress.country" cssStyle="color:red"></form:errors>  <br>
     
       <form:label path="shippingAddress.zipcode">Zipcode</form:label> <br>
       <form:input path="shippingAddress.zipcode"  class="form-control"  /> 
       <form:errors path="shippingAddress.zipcode"  cssStyle="color:red"></form:errors>  <br>
    </div><!-- End col-sm-4 --> 
     <br>
    
    
    
    <input type="submit" value="Sign-Up" class="btn btn-danger" style="margin-left:420px ; margin-top:30px" />
   
    </form:form>
     
   </div>  <!-- end of  panel-body -->
   
 </div> <!-- end of panel -->

</div>  <!-- end of container class -->
  
</body>
</html>
<jsp:include page="footer.jsp"></jsp:include>
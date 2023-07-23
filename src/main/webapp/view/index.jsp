<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CollegeProject</title>
<link href="webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.4/jquery.min.js"></script>
</head>
<body style="background-color: #7ED957">

<div class="container" style="padding-top: 100px">
 <div class="row">
     <div class="col-sm-8" style="text-align: center;">
     
    
<img alt="logo" src="webjars/images/blue.jpg" height="300px" width="300px"><br>
<h3 style="color: black;">we help people to connect and provide parking solution.</h3>
     </div>
 
    <div class="col-sm-4" style="text-align: center;">
 <div class="panel panel-default">
  <div class="panel-body" >
  
  <h3>Login</h3><br>
                <div class="form-group">
  
      <form:form action="login" modelAttribute="userL">
      
     <label for="email">Email address:</label>
     <form:input path="email" cssClass="form-control"/><br>
      <form:errors path="email"></form:errors>
      
      <label for="email">Password:</label>
     <form:input path="password" cssClass="form-control"/><br>
            <form:errors path="password"></form:errors>
      
              <button type="submit" class="btn btn-default" style="background-color: black; color: white;">Submit</button>
      
      </form:form>
      
      
      </div>
      
      </div>
     <br><br> <a href="signupwin"><button class="btn btn-default" style="background-color: black; color: white; width: 300px">Click Here To Signup</button></a>
      
</div>
</div>
</div>
</div>
</body>
</html>
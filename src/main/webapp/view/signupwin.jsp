<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
<script src="webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.4/jquery.min.js"></script>
</head>
<body style="background-color: #7ED957">
<div class="container">
<div class="panel panel-default">
  <div class="panel-body" >
  
                <div class="form-group" style="padding: 100px; padding-left: 300px; padding-right: 300px">
                
                  <h3>Signup</h3><br>
                
      <form:form action="signup" modelAttribute="userS">
      
     <label for="email">Email address:</label>
     <form:input path="email" cssClass="form-control"/><br>
      <form:errors path="email"></form:errors>
      
       <label for="name">Name:</label>
     <form:input path="name" cssClass="form-control"/><br>
      <form:errors path="name"></form:errors>
      
      <label for="email">Password:</label>
     <form:input path="password" cssClass="form-control"/><br>
            <form:errors path="password"></form:errors>
      
              <button type="submit" class="btn btn-default" style="background-color: black; color: white;">Submit</button>
      
      </form:form>
      
      
      </div>
      
      </div>
      </div>
</div>
</body>
</html>
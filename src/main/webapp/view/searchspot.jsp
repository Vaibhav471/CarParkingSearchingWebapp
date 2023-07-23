<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
            <%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #BBFFC7">
<div class="jumbotron text-center" style="background-color: #7ED957; color: black">
  <h1>Search Parking Spot</h1>
  <p>Fill up the details asked below to select your parking spot from thousands of parking spots listed on our website.</p>
</div>
<div class="container" style="padding: 200px;padding-left: 300px; padding-top: 20px">
                <div class="form-group">


 <form:form action="searchspots" modelAttribute="address">
 
      <label for="state">State:</label>
       <form:input path="state" cssClass="form-control"/>
      <form:errors path="state"></form:errors>
      
           <label for="city">City:</label>
      <form:input path="city" cssClass="form-control"/>
            <form:errors path="city"></form:errors>
     
                 <label for="pin_code">Area pincode:</label>
     <form:input path="pin_code" cssClass="form-control"/>
            <form:errors path="pin_code"></form:errors>
            
             <label for="adl1">Address Line(1):</label>
               <form:input path="adl1" cssClass="form-control"/>
            <form:errors path="adl1"></form:errors>
      
                   <label for="adl2">Address Line(2):</label>
      <form:input path="adl2" cssClass="form-control"/>
            <form:errors path="adl2"></form:errors>
      
      <br><button type="submit" class="btn btn-default" style="background-color: black; color: white;">Submit</button>

      </form:form>
      </div>
      </div></body>
</html>
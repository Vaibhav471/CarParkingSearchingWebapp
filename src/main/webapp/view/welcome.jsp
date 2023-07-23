<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 <style>
 .button {
  display: inline-block;
  padding: 10px 20px;
  background-color: black;
  color: white;
  border: none;
  border-radius: 4px;
  font-size: 16px;
  text-decoration: none;
  transition: background-color 0.3s ease-in-out;
}

.button:hover {
  background-color: #333;
}
 </style>
</head>
<body style="background-color: #E6E6E6">
<div class="jumbotron text-center" style="background-color: #7ED957; color: black;">
  <h1>Welcome ${user.name}</h1>
</div>

<div class="container" style="margin-top: 40px">
  <div class="row">
    <div class="col-sm-6" style="text-align: center;min-height: 200px; background-color: #7ED957;border-width: 7px;border-style: solid;border-color: #E6E6E6;">
      <h3>Search Parking Spot</h3>
      <a href="searchspot" class="button">Click Here</a>
      
    </div>
    <div class="col-sm-6" style="text-align: center;min-height: 200px;background-color: #7ED957;border: 1px solid black;border-width: 7px;border-style: solid;border-color: #E6E6E6;">
      <h3>List Parking Spot</h3>
      <form:form action="listspots" modelAttribute="user">
      <input type="submit" class="button" value="Click Here">
      </form:form>
     
      
     
      
    </div>
  </div>
  <div class="row">
    <div class="col-sm-6" style="text-align: center;min-height: 200px;background-color: #7ED957;border: 1px solid black;border-width: 7px;border-style: solid;border-color: #E6E6E6;">
      <h3>Your Listings</h3>
      <a href="yourlist" class="button">Click Here</a>
      
    </div>
    <div class="col-sm-6" style="text-align: center;min-height: 200px;background-color: #7ED957;border-width: 7px;border-style: solid;border-color: #E6E6E6;">
      <h3>Payments</h3>
      <a href="#" class="button">Click Here</a>
      
    </div>
  </div>
</div>
</html>
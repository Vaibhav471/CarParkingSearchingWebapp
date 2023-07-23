<%@page import="java.util.ArrayList"%>
<%@page import="com.bcollege.Address"%>
<%@page import="com.bcollege.DBHandler"%>
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
  <h1>Available Parking Spots</h1>
  <p>Parking spots that are available near your location are listed below</p>
</div>

<div class="container">
<ul class="list-group">

<%DBHandler db=new DBHandler();
Address address=(Address)request.getAttribute("address");
ArrayList<Address> add= db.getSpots(address); 

for(Address ad:add){
%>

  <li class="list-group-item">
                 
<label for="pin_code">State:</label> <%=ad.getState() %><br>
<label for="pin_code">City:</label> <%=ad.getCity() %><br>
<label for="pin_code">Area pincode:</label> <%=ad.getPin_code()%><br>
<label for="pin_code">Address Line(1):</label> <%=ad.getAdl1() %><br>
<label for="pin_code">Address Line(2):</label> <%=ad.getAdl2() %><br>
<label for="pin_code">Address Line(3):</label> <%=ad.getAdl3()%><br><br>
<label for="pin_code">Owner:</label> <%=ad.getOwner()%><br>
<label for="pin_code">Owner's Contact Number:</label> <%=ad.getPno()%><br>


</li><br>
<%} %>
    </ul>
    </div>
</body>
</html>
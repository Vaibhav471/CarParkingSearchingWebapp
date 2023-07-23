<%@page import="com.bcollege.Address"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.bcollege.User"%>
<%@page import="com.bcollege.DBHandler"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
<body style="background-color: #BBFFC7">
<div class="jumbotron text-center" style="background-color: #7ED957; color: black">
  <h1>Parking spots listed by you</h1>
  <p>you can change the availability status of each parking spot by clicking the change status button.</p>
</div>

<div class="container">
<ul class="list-group">

<% DBHandler db=new DBHandler();
User u=(User)request.getSession().getAttribute("user");
ArrayList<Address> address=db.getYourSpots(u.getEmail());

for(Address ad:address){
%>
 <li class="list-group-item">
                 
<label for="pin_code">State:</label> <%=ad.getState() %><br>
<label for="pin_code">City:</label> <%=ad.getCity() %><br>
<label for="pin_code">Area pincode:</label> <%=ad.getPin_code()%><br>
<label for="pin_code">Address Line(1):</label> <%=ad.getAdl1() %><br>
<label for="pin_code">Address Line(2):</label> <%=ad.getAdl2() %><br>
<label for="pin_code">Address Line(3):</label> <%=ad.getAdl3()%><br><br>
<label for="pin_code">Owner's Contact Number:</label> <%=ad.getPno()%><br>


<br>
<div class="panel panel-default" style="width: 300px">
  <div class="panel-body"><label for="pin_code">Availability Status:</label>
  
  <%if(ad.getStatys()==1){%>
  <p style="font-weight: bold; color: #1FA145; display: inline;">Available</p>
  <%} 
  else{%>
  <p style="font-weight: bold; color: red; display: inline;">Not Available</p>
  <%} %>
      <a href="spotstatus?spotId=<%=ad.getAddressID()%>" class="button">Change Status</a></div>
</div>

</li><br>

<%} %>
</ul>
</div>
</body>
</html>
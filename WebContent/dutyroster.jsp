<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Free Time</title>
  
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f2f2f2;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        

    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="#">Welcome to Komander Kesatria Duty Roster System</a></li>

    </div>
  </div>
</nav>
  
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
      <p><a href="MemberController?action=viewAccount">My Account</a></p>
      <p><a href="FreeTimeController?action=freeTime">Free Time</a></p>
      <p><a href="FreeTimeController?action=dutyRoster">Duty Roster</a></p>
      <p><a href="MemberController?action=logout">Logout</a></p>
    </div>
    <div class="col-sm-8 text-left"> 
      <h1>Duty Roster</h1>
      <hr>
      <div class="row">
      <div class="col-sm-4">
     <table border="1">
     	<tr>
	     	<th>Monday</th>
     	</tr>
     	<c:forEach items="${days}" var="day">
	     	<c:choose>
	     		<c:when test="${day.dayName == 'Monday' }">
	     			<tr>
			     		<td><c:out value="${day.studentName}" /></td>
		     		</tr>
	     		</c:when>
	     	</c:choose>
		</c:forEach>
     	
     </table>
     </div>
     <div class="col-sm-4">
     <table border="1">
     	<tr>
	     	<th>Tuesday</th>
     	</tr>
     	<c:forEach items="${days}" var="day">
	     	<c:choose>
	     		<c:when test="${day.dayName == 'Tuesday' }">
	     			<tr>
			     		<td><c:out value="${day.studentName}" /></td>
		     		</tr>
	     		</c:when>
	     	</c:choose>
		</c:forEach>
     	
     </table>
	</div>
     <div class="col-sm-4">
     <table border="1">
     	<tr>
	     	<th>Wednesday</th>
     	</tr>
     	<c:forEach items="${days}" var="day">
	     	<c:choose>
	     		<c:when test="${day.dayName == 'Wednesday' }">
	     			<tr>
			     		<td><c:out value="${day.studentName}" /></td>
		     		</tr>
	     		</c:when>
	     	</c:choose>
		</c:forEach>
     	
     </table>
     </div>
     </div>
     
     <br><br>
     <div class="row justify-content-around">
     <div class="col-sm-4">
     <table border="1">
     	<tr>
	     	<th>Thursday</th>
     	</tr>
     	<c:forEach items="${days}" var="day">
	     	<c:choose>
	     		<c:when test="${day.dayName == 'Thursday' }">
	     			<tr>
			     		<td><c:out value="${day.studentName}" /></td>
		     		</tr>
	     		</c:when>
	     	</c:choose>
		</c:forEach>
     	
     </table>
	</div>
     <div class="col-sm-4">
     <table border="1">
     	<tr>
	     	<th>Friday</th>
     	</tr>
     	<c:forEach items="${days}" var="day">
	     	<c:choose>
	     		<c:when test="${day.dayName == 'Friday' }">
	     			<tr>
			     		<td><c:out value="${day.studentName}" /></td>
		     		</tr>
	     		</c:when>
	     	</c:choose>
		</c:forEach>
     	
     </table>
     </div>
     </div>     
	
  </div>
</div>
<footer class="container-fluid text-center">
  <p>Mind Over Matter</p>
</footer>
<input type="hidden"  id="min" value="${min}">
<script>
if($('#min').val() == 'true'){
	alert('Minimum 3 days');
	}
</script>
</body>
</html>
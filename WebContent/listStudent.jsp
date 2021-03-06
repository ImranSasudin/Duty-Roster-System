<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
	response.setDateHeader ("Expires", 4);
	System.out.println(session.getAttribute("currentUserID"));
	String name = (String)session.getAttribute("currentSessionUser");
	String id = (String)session.getAttribute("currentUserID");
	if(session.getAttribute("currentUserID")==null){
	    response.sendRedirect("/DutyRosterSystem/login1.jsp");
	}
	else{
		   id = (String)session.getAttribute("currentUserID");
		   name =(String)session.getAttribute("currentSessionUser");
		  System.out.println(id);

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Komander Free Time</title>
</head>
<body>


    <!-- Basic Page Needs
  ================================================== -->
	<meta charset="utf-8">
	<title></title>
	
    <!-- Mobile Specific Metas
  ================================================== -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    
    <!-- CSS
  ================================================== -->
  	<link rel="stylesheet" href="css/zerogrid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/menu.css">
	<link rel="stylesheet" href="css/responsiveslides.css">
	<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	
	<script src="js/jquery-latest.min.js"></script>
	<script src="js/script.js"></script>
    <script src="js/jquery183.min.js"></script>
    <script src="js/responsiveslides.min.js"></script>
    <script>
		// You can also use "$(window).load(function() {"
		$(function () {
		  // Slideshow 
		  $("#slider").responsiveSlides({
			auto: true,
			pager: false,
			nav: true,
			speed: 500,
			namespace: "callbacks",
			before: function () {
			  $('.events').append("<li>before event fired.</li>");
			},
			after: function () {
			  $('.events').append("<li>after event fired.</li>");
			}
		  });
		});
	</script>
	
	
	<!--[if lt IE 8]>
       <div style=' clear: both; text-align:center; position: relative;'>
         <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
           <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
        </a>
      </div>
    <![endif]-->
    <!--[if lt IE 9]>
		<script src="js/html5.js"></script>
		<script src="js/css3-mediaqueries.js"></script>
	<![endif]-->
    
</head>
<body>
<div class="wrap-body">
<section id="container">
	<div class="zerogrid">
		<div class="wrap-container">
			<div id="main-content">
				<div class="wrap-box"><!--Start Box-->
					<div class="row">
						<div class="row">
						<div class="col-2-3">
                              <div class="row">
                              LIST OF STUDENT:
                              <table class="table table-bordered table-hover table-striped" align="center" style="width:450px;">
                						<tr>
                							<th>ID</th>
                							<th>NAME</th>
                							<th>PHONE</th>
                							<th>POSITION</th>
                							<th>CGPA</th>
                						</tr>
                						<c:forEach items="${users}" var="user">
                						<tr>
                							<td><c:out value="${user.id}"/></td>
                							<td><c:out value="${user.name}"/></td>
                							<td><c:out value="${user.phone}"/></td>
                							<td><c:out value="${user.position}"/></td>
                							<td><c:out value="${user.cgpa}"/></td>
                						</tr>
                						</c:forEach> 	
                              </table>
                              </div>
						</div>
					</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
</div>	
</body>
<%} %>
</html>	

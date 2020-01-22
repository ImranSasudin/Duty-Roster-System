<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="kkdrs.userBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Free Time</title>
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

<!-- /////////////////////////////////////////Top -->
<div class="top">
	<div class="zerogrid">
		<div class="row">
			<div class="f-left">

			</div>
			<div class="f-right">
			</div>
		</div>
	</div>
</div>

<!--////////////////////////////////////Container-->
<section id="container">
	<div class="zerogrid">
		<div class="wrap-container clearfix">
			<div id="main-content">
				<div class="wrap-box"><!--Start Box-->
					<div class="row">
						<div class="col-2-3">
							<div class="wrap-col">
								<div class="contact">
									<div class="contact-header">
										<h5>KOMANDER FREE TIME</h5>
									</div>
									<div id="contact_form">
									
									<!-- START OF FORM -->
									
									<form name="form1" method="post" id="ff" action="freetimeServlet">
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="text" name="name" id="name" placeholder="Enter Your Name " required="required" />
													</div>
											
											
<BODY bgcolor="white">

<font size=10 color="black">
CHECK ALL YOUR FREE TIME: 

 						<div class="three_quarter first">	
					              
					            	<input type="checkboxone" class="disable" onclick="check();" name="Free Time" value="monday" id="day">Monday
									<input type="checkboxtwo" class="disable" onclick="check();" name="Free Time" value="tuesday" id="day">Tuesday
									<input type="checkboxthree" class="disable" onclick="check();" name="Free Time" value="wednesday" id="day">Wednesday
									<input type="checkboxfour" class="disable" onclick="check();" name="Free Time" value="thursday" id="day">Thursday
									<input type="checkboxfive" class="disable" onclick="check();" name="Free Time" value="friday" id="day">Friday
							</div>

  
</label>  
<label class="row">
<div class="wrap-col">
<input class="sendButton" type="submit" name="submitcontact" value="Update">	    
</div>
</label>
<label class="row">
<div class="wrap-col">
<input class="sendButton" type="reset" name="submitcontact" value="Cancel">	    
</div>
</label>
									
										<!-- END OF FORM -->
										
								
		
</body>
</html>	

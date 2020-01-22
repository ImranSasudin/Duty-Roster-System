<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Komander Register</title>
</head>
<body>

	<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

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
										<h5>REGISTER KOMANDER ACCOUNT</h5>
									</div>
									<div id="contact_form">
									
									<!-- START OF FORM -->
									
										<form name="form1" method="post" id="ff" action="MemberController">
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="id" name="id" id="id" placeholder="Enter Student Id" required="required" />
													</div>
												</div>
											</label>
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="text" name="name" id="name" placeholder="Enter Your Name" required="required" />
													</div>
												</div>
											</label>
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="text" name="address" id="address" placeholder="Enter Your Adresss" required="required" />
													</div>
												</div>
											</label>
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="text" name="phone" id="phone" placeholder="Enter Your Phone Number" required="required"/>
													</div>
														</div>
											</label>
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="text" name="position" id="position" placeholder="Enter Your Position in Komander (Eg KK,RSM,ADJUTANT,KSM,MEMBER)" required="required"/>
													</div>
												
												</div>
											</label>
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="text" name="cgpa" id="cgpa" placeholder="Enter Your Current CGPA" required="required"/>
													</div>
												</div>
											</label>
											<label class="row">
												<div class="col-1-2">
													<div class="wrap-col">
														<input type="password" name="password" id="password" placeholder="Enter Your Password" required="required" />
													</div>
												</div>
											</label>
											<label class="row">
												<div class="wrap-col">
													<button class="sendButton" type="submit" name="action" value="Register">Register</button>	    
												</div>
											</label>
											<label class="row">
												<div class="wrap-col">
													<input class="sendButton" type="reset" name="submit" value="Reset">	    
												</div>
											</label>
											<br/><a href="login.jsp">Login Here</a><br/>
										</form>
										
										<!-- END OF FORM -->
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
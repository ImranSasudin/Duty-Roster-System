<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Komander Duty Roster</title>
</head>
<body>

	<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

<!DOCTYPE html>
<html>
<head>
<style>

  border-collapse: collapse;
  width: 100%;
  length:100%;
}

th, td {
  text-align: left;
  padding: 10px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #ffbf00;
  color: white;
}
table, td, th {
  border: 3px solid black;
}

table {
  border-collapse: collapse;
  width: 100%;
  length:100%;
}

td {
  height: 50px;
  vertical-align: bottom;
}
</style>
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
										<h2>Komander Kesatria Duty Roster</h2>
									</div>
									<div id="contact_form">
							

<table>

  <tr>
   <th>Monday</th>
    <td>Name</td>
    
  </tr>
  <tr>
    <th>Tuesday</th>
    <td>Name</td>
    
  </tr>
  <tr>
    <th>Wednesday</th>
    <td>Name</td>
   
  </tr>
  <tr>
    <th>Thursday</th>
    <td>Name</td>
    
  </tr>
  <tr>
    <th>Friday</th>
    <td>Name</td>
    
  </tr>
</table>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="collegefinder.dao.DAO" %>
 <%@ page import= "java.util.*" %>
<%@ page import="collegefinder.model.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Search_Card</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="College Finder project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/searchcard.css">
<link rel="stylesheet" type="text/css" href="styles/scholarship_responsive.css">
</head>
<body>

<div class="super_container">

	<!-- Header -->

	<header class="header">
			
		<!-- Top Bar -->
		<div class="top_bar">
			<div class="top_bar_container">
				<div class="container">
					<div class="row">
						<div class="col">
							<div class="top_bar_content d-flex flex-row align-items-center justify-content-start">
								<ul class="top_bar_contact_list">
									<li><div class="question">Have any questions?</div></li>
									<li>
										<i class="fa fa-phone" aria-hidden="true"></i>
										<div>01-4475891/01-4487864</div>
									</li>
									<li>
										<i class="fa fa-envelope-o" aria-hidden="true"></i>
										<div>CollegeFinder@gmail.com</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>				
		</div>

		<!-- Header Content -->
		<div class="header_container">
			<div class="container">
				<div class="row">
					<div class="col">
						<div class="header_content d-flex flex-row align-items-center justify-content-start">
							<div class="logo_container">
								<a href="#">
									<img class="img-responsive logo" src="images/college finder.png">
								</a>
							</div>
							<nav class="main_nav_contaner ml-auto">
								<ul class="main_nav">
									<li><a href="home.html">Home</a></li>
									<li><a href="about.html">About</a></li>
									<li><a href="contact.html">Contact</a></li>
									<li><a href="scholarship.html">Scholarship</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>			
</header>

	<!-- Home -->

	<div class="home">		
	</div>
	
	
	<!--Card-->
<%
 DAO dao = new DAO();
List<User> userList = (ArrayList<User>)request.getAttribute("userList");
%>
  <%
for(User user: userList){
%>
		<!-- college card  -->
	<div class="row">
		 <div class="col-md-10">
           <div class="card" style="margin-left:25%; margin-top:1rem;">
            <div class="card-body">
             <h3 class="card-title"><%= user.getCollegeName() %></h3>
              <p class="card-text"><%=user.getCollegeAddress() %></p>
              <p class="card-sub_text"><%=user.getUniversity() %></p>
              <span style="cursor:pointer";color:#0000FF onclick="window.open('//<%=user.getLink() %>','_blank')">
              <u><%=user.getLink() %></u></span>
             </div>
           </div>
          </div>
         </div>
<%
}
%>
<br>
   
	<!-- Footer -->

	<footer class="footer">
		<div class="footer_background" style="background-image:url(images/footer_background.png)"></div>
		<div class="container">
			<div class="row footer_row">
				<div class="col">
					<div class="footer_content">
						<div class="row">

							<div class="col-lg-4 footer_col">
					
								<!-- Footer About -->
								<div class="footer_section footer_about">
									<div class="footer_logo_container">
										<a href="#">
											<div class="footer_logo_text">College Finder</div>
										</a>
									</div>
									<!-- <div class="footer_about_text">
										<p>An innovative way to choose your educational institution</p>
									</div> -->
									<div class="footer_social">
										<ul>
											<li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
											<li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="col-md-4 footer_col">
					
								<!-- Footer Contact -->
								<div class="footer_section footer_contact">
								   <div class="footer_title">Contact Us</div>
									<div class="footer_contact_info">
										<ul>
											<li>Email: collegefinder@gmail.com</li>
											<li>Phone: 01-4475891/01-4487864 </li>
											<li>Chabahil, Nepal</li>
										</ul>
									</div>
								</div>
							</div>
								<div class="col-lg-3 footer_col">
					
								
								<!-- Footer links -->
								<div class="footer_section footer_mobile">
									<div class="footer_title">Mobile</div>
									<div class="footer_mobile_content">
										<div class="footer_image"><a href="#"><img src="images/mobile_1.png" alt=""></a></div>
										<div class="footer_image"><a href="#"><img src="images/mobile_2.png" alt=""></a></div>
									</div>
								</div>
							</div>	
						</div>
					</div>
				</div>
			</div>

			<div class="row copyright_row">
				<div class="col">
					<div class="copyright d-flex flex-lg-row flex-column align-items-center justify-content-start">
						<div class="cr_text">
                         Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | College Finder
                        </div>
                        <div class="ml-lg-auto cr_links">
							<ul class="cr_list">
								<li>Copyright notification</li>
								<li>Terms of Use</li>
								<li>Privacy Policy</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="js/contact.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
</body>
</html>
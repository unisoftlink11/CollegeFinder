<!DOCTYPE html>
<html lang="en">
<head>
<title>College Finder</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="CollegeFinder project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"> -->
<%@ page import="collegefinder.dao.DAO" %>
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
									
		                       <!--  topsearch -->
		                      <form class="exa" action="UserHandler" method="GET">
		                         <input type="hidden" name="command" value="searchdata">
                                 <input type="text" placeholder="Looking for colleges?" required name="searchkey">
                                 <input type="submit" value="Search">
                             </form>
                             <!--  topsearch -->
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
								<img class="img-responsive logo" src="images/college finder.png"/>
								</a>
							</div>
							<nav class="main_nav_contaner ml-auto">
								<ul class="main_nav">
									<li class="active"><a href="home.jsp">Home</a></li>
									<li><a href="about.html">About</a></li>
									<li><a href="contact.html">Contact</a></li>
									<li><a href="scholarship.html" style="margin-left: -480px;">Scholarship</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>	
	</header>
	
	<!-- Home -->

	<div class="home">
		<div class="home_slider_container">
			
			<!-- Home Slider -->
			<div class="hero-image">
			  <div class="home_slider_background" style="background-image:url(images/home_banner.jpg)" >
			  </div>
					<div class="home_slider_content">
						<div class="container">
							<div class="row">
			                    <div class="col text-center">
									<div class="home_slider_title">Discover College Of Your Choice</div>
									<div class="home_slider_subtitle">Let's uncover the best places to gain education that nearest and affordable to you.</div>
									<h3 style="margin-top:10px;">Do you feel lost when trying to begin your college search?</h3>
									<div class="home_slider_form_container" style="margin-left: 13rem;">
									
									<!--list the colleges under the category of university and course--> 
									
										<form action="UserHandler" method="POST" id="home_search_form_1" class="home_search_form d-flex flex-lg-row    flex-column align-items-center justify-content-between">
                                              <input type="hidden" name="command" value="search">
                                              <div class="d-flex flex-row align-items-center justify-content-start">
   <!--                                            <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Dropdown link
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Link 1</a>
        <a class="dropdown-item" href="#">Link 2</a>
        <a class="dropdown-item" href="#">Link 3</a>
      </div>
    </li> -->
												<select class="dropdown_item_select home_search_input" data-toggle="dropdown" name="course">
													<option>Category Courses</option>
													<option>BSC.CSIT</option>
													<option>BIM</option>
													<option>BCA</option>
												</select>
												<select class="dropdown_item_select home_search_input" name="uv">
													<option>University</option>
													<option>TU</option>
												</select> 
											</div>
											<input type="submit" class="home_search_button" value="Search">
										</form>
										
										
										
										<%
										DAO dao = new DAO();
										String result=null;
												if(request.getAttribute("name")!=null){
													result = request.getAttribute("name").toString();
												}
												else{
													result ="Enter value for search";
												}
										
										
										%>
										<!-- knapsack search for optimal solution -->
										<form class="example" action="UserHandler" method="get">
                                          <input type="hidden" name="command" value="search1">
                                          <input type="text" placeholder="Search" name="search2" color="black" onkeypress='validate(event)'>
                                          <button type="submit"><i class="fa fa-search"></i></button>
                                         </form> 
                                         <form class="exs">
                                          <input type="text" value="<%=result %>">
                                         </form>
										</div>
									</div>
								 </div>
				  			 </div>
			  			 </div>
		  			 </div>
		  		 </div>
		  	</div>

	<!-- Popular Courses -->

	<div class="courses">
		<div class="section_background parallax-window" data-parallax="scroll" data-image-src="images/courses_background.jpg" data-speed="0.8"></div>
		<div class="container">
			<div class="row">
				<div class="col">
					<div class="section_title_container text-center">
						<h2 class="section_title">Popular IT Programmes</h2>
					</div>
				</div>
			</div>
			<div class="row courses_row">
				
				<!-- Course -->
				<div class="col-lg-4 course_col">
					<div class="course">
						<div class="course_image"><img src="images/course_1.jpg" alt=""></div>
						<div class="course_body">
							<h3 class="course_title"><a href="course.html">BSC.CSIT</a></h3>
							
							<div class="course_text">
								<p style="color: black;" >Bachelors of Science in Computer Science and Information Technology (BSc. CSIT) is a four year course affiliated to Tribhuvan University designed to provide the student with all sorts of knowledge in the field of Information Technology and Computing.Currently 53 Colleges offers B.Sc CSIT program in Nepal.This program involves, in addition to conventional lectures,a great deal of practical and project works.The program develops the underlying principles of both Computer Science and Information Technology.</p>
								<a href="bsccsit.html" class="btn btn-primary">Learn More</a>
							</div>
						</div>
					</div>
				</div>

				<!-- Course -->
				<div class="col-lg-4 course_col">
					<div class="course">
						<div class="course_image"><img src="images/banner_1.jpg" alt=""></div>
						<div class="course_body">
							<h3 class="course_title"><a href="course.html">BCA</a></h3>
							<div class="course_text">
								<p style="color: black;">Tribhuvan University has launched Bachelor of Computer Application (BCA) program from the academic year 2074/75.In the first phase,this program has been launched in six(6) constituent campuses of Tribhuvan University and are allocated 35 seats each.Currently 125 Colleges are running BCA program with the affiliation from Tribhuvan University.The BCA program of TU is of 4 years.The program runs on semester-system. 
                                Purbanchal University and Pokhara University are also running BCA program in Nepal.</p>
                                <a href="bca.html" class="btn btn-primary">Learn More</a>
							</div>
						</div>
					</div>
				</div>

				<!-- Course -->
				<div class="col-lg-4 course_col">
					<div class="course">
						<div class="course_image"><img src="images/course_3.jpg" alt=""></div>
						<div class="course_body">
							<h3 class="course_title"><a href="course.html">BIM</a></h3>
							<div class="course_text">
								<p style="color: black;">The Bachelor of Information Management (BIM) programme is a four year (eight semester) programme of Tribhuvan University offering an integrated IT and Management Courses. This course is envisaged to enable students to develop skill in information technology, and at the same time make them able to understand the professional expertise while they occupy decision making positions. In Nepal more than 26  Business/IT colleges offers Bachelor of Information Management (BIM) program with affiliation from Tribhuvan University.</p>
								  <a href="bim.html" class="btn btn-primary">Learn More</a>
							</div>
						</div>
					</div>
				</div>
				</div>
				
				<div class="row courses_row">
					<div class="col-lg-4 course_col">
					<div class="course">
						<div class="course_image"><img src="images/course_5.jpg" alt=""></div>
						<div class="course_body">
							<h3 class="course_title"><a href="course.html">BCIS</a></h3>
							<div class="course_text">
								<p style="color: black;">Bachelor of Computer Information Systems (BCIS) is a four years degree launched by Pokhara University. BCIS course is a blend of Information Technology and Business Management.The course aims to give knowledge of both IT and management throughout the 4 years.Therefore,BCIS students can either select computer field or management field after the completion of their degree. These types of courses are also good for students who wants to hold the managerial positions of IT industry like Business Analyst,IT Manager.
							   </p>
								  <a href="bcis.html" class="btn btn-primary">Learn More</a>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-4 course_col">
					<div class="course">
						<div class="course_image"><img src="images/course_4.jpg" alt=""></div>
						<div class="course_body">
							<h3 class="course_title"><a href="course.html">BIT</a></h3>
							<div class="course_text">
								<p style="color: black;">Bachelor of Information Technology (BIT) is a 4 years degree launched by Purbanchal University. There are many colleges which run BIT program in affiliation to Purbanchal University. The main focus of BIT program business and communication aspect of computing.Unlike Computer Science (CS) degree which focus towards Software, BIT is more focused towards the computer system, network, data communication, computer architecture, telecommunication along with software development and database systems.
									</p>
								  <a href="bit.html" class="btn btn-primary">Learn More</a>
							</div>
						</div>
					</div>
				</div>
			

			<div class="col-lg-4 course_col">
					<div class="course">
						<div class="course_image"><img src="images/course_8.jpg" alt=""></div>
						<div class="course_body">
							<h3 class="course_title"><a href="course.html">BBIS</a></h3>
							<div class="course_text">
							 <p style="color: black;">BBIS is an 8th semester academic program spread through 4 continuous years. It is an integration form of business disciplines with information management to provide the sound knowledge of information systems technology. It has a total of 120 credit hours with 3 credit hrs/subject. It is designed by blending the domain knowledge of the information systems and IT with that of business and management.The concentration courses are from the area of Information System.The students need to choose 24 credit hours.
                               </p> <a href="bbis.html" class="btn btn-primary">Learn More</a>
							</div>
						</div>
					</div>
	              </div>
	            </div>
			</div>
        </div>
	

	<!-- footer -->
	
	<div class="footer">
	<div class="container">
		<div class="footer_logo">
			<div class="row">
			 <div class="col-md-4">
				<div class="footer_logo_container">
					<a href="#">
						<div class="footer_logo_text">College<span>Finder</span></div>
					</a>
				</div>	
				<div class="logo_about">
				COLLEGE FINDER is a web application which will provide the information like course, college information, available seats, etc. of many colleges at one place. With the help of this application any one can get information of many colleges in very short time and also save the expenses of visiting colleges.
				</div>
		     </div>
		   <div class="col-md-4">
			<div class = "footer_contact">
					<h4>Contact Info</h4>
					Phone :01-4475891/01-4487864<br>
					E-mail:CollegeFinder@gmail.com
			</div> 
		</div>
		
		<div class="col-md-4">
			<div class="footer_quick">
			   <h3>Quick Link</h3>
				<li><a href="home.html">Home</a></li>
				<li><a href="">About</a></li>
				<li><a href="">Contact</a></li>
				<li><a href="">Scholarship</a></li>
			 </div>
		  </div>
	   </div>
   </div>
</div>

			<div class="row copyright_row">
				<div class="col">
					<div class="copyright d-flex flex-lg-row flex-column align-items-center justify-content-start">
						<div class="cr_text">
                           Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | CollegeFinder
                        </div>
						<div class="ml-lg-auto cr_links">
							<ul class="cr_list">
								<li><a href="#">Copyright notification</a></li>
								<li><a href="#">Terms of Use</a></li>
								<li><a href="#">Privacy Policy</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- footer -->
		</div>	
<script src="js/jquery-3.2.1.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="js/custom.js"></script>
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script> -->
</body>
</html>
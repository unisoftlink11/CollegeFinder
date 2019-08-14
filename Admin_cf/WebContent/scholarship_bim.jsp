<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="collegefinder.dao.DAO" %>
<%@ page import= "java.util.*" %>
<%@ page import="collegefinder.model.CollegeModel" %>
<%@ page import="collegefinder.model.scholarshipafteradmission" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Scholarship</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="CollegeFinder project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="styles/scholarship_table.css">
<link rel="stylesheet" type="text/css" href="styles/scholarship_responsive.css">
</head>
<body>

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
									<li><a href="home.jsp">Home</a></li>
									<li><a href="about.html">About</a></li>
									<li><a href="contact.html">Contact</a></li>	
									<li><a href="scholarship.html" style="margin-left: -475px;">Scholarship</a></li>
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
	</div>
	
	<%
    DAO dao = new DAO();
   List<CollegeModel> scholarBim = (ArrayList<CollegeModel>)request.getAttribute("collegemodel2");
   List<scholarshipafteradmission> scholar_Bim = (ArrayList<scholarshipafteradmission>)request.getAttribute("collegemode2");

%>
<h3>Scholarship Before Admission</h3>
 <table id="sba" border="1"> 
   <tbody>
  <thead>
    <tr>
     <th rowspan="2" >Id</th>
     <th rowspan="2" >HSEB Board(or Equivalent)% OR IOST Entrance Score</th>
     <th colspan="2" align="center"> Scholar Schema</th>
     </tr>
     <tr>
     <th >Admission Fee</th>
     <th> Semester Fee</th>
    </tr>
  </thead>
</tbody>
 <%
for(CollegeModel collegemodel1: scholarBim){
%>


<td><%=collegemodel1.getId() %>
<td><%= collegemodel1.getHseb()%></td>
<td><%= collegemodel1.getAdmissionFee() %></td>
<td><%= collegemodel1.getSemesterFee() %></td>
</tr>

<%
}
%>
</table>
<br/>
<h3>Scholarship After Admission</h3>
 <table id="sba" border="1"> 
   <tbody>
  <thead>
    <tr>
      <th>Id</th>
     <th>First</th>
     <th>Second</th>
     <th>Third</th>
    </tr>
  </thead>
</tbody>
 <%
for(scholarshipafteradmission saa1: scholar_Bim){
%>
<td><%=saa1.getId() %>
<td><%= saa1.getFirst()%></td>
<td><%= saa1.getSecond() %></td>
<td><%= saa1.getThird() %></td>
</tr>

<%
}
%> 
</table>

	
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
				<li><a href="home.jsp">Home</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="contact.html">Contact</a></li>
				<li><a href="scholarship.html">Scholarship</a></li>
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
<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
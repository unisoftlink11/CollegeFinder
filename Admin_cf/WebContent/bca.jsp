 <%@ page import="collegefinder.dao.DAO" %>
 <%@ page import= "java.util.*" %>
<%@ page import="collegefinder.model.User" %>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>College Finder</title>

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-text mx-3"><img class="img-responsive logo" src="images/college finder.png" width="160" height="35"/></div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="index.html">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Dashboard</span></a>
      </li>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages" aria-expanded="true" aria-controls="collapsePages">
          <i class="fas fa-fw fa-folder"></i>
          <span>Pages</span>
        </a>
        <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="login.html">Login</a>
            <a class="collapse-item" href="register.html">Register</a>
            <a class="collapse-item" href="forgot-password.html">Forgot Password</a>
        </div>
      </li>

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="charts.html">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>Charts</span></a>
      </li>

      <!-- Nav Item - Tables -->
         <li class="nav-item active">
        <a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePages1" aria-expanded="true" aria-controls="collapsePages" >
          <i class="fas fa-fw fa-table"></i>
          <span>Tables</span></a>
          <div id="collapsePages1" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <a class="collapse-item" href="bsccsit.jsp">BSC.CSIT</a>
            <a class="collapse-item" href="bca.jsp">BCA</a>
            <a class="collapse-item" href="bim.jsp">BIM</a>
        </div>
          </div>
      </li>
      
       <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">
      
    </ul>
    <!-- End of Sidebar -->
    <%
    DAO dao = new DAO();
    List<User> userList = dao.getAllUser1();

%>
<table class="table table-bordered">
<tbody>
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">CollegeName</th>
       <th scope="col">CollegeAddress</th>
      <th scope="col">University</th>
      <th scope="col">Link</th>
       <td colspan="2" align="center"><a href="insert_bca.jsp" class="btn btn-primary">Insert</a></td>
    </tr>
  </thead>
</tbody>
<%
for(User user: userList){
%>
<td><%=user.getId() %>
<td><%= user.getCollegeName() %></td>
<td><%= user.getCollegeAddress() %></td>
<td><%= user.getUniversity() %></td>
<td><%= user.getLink() %></td>
<td><a href="UserHandler?command=delete_bca&id=<%=user.getId()%>" class="btn btn-danger">Delete</a></td>
<td><a href="UserHandler?command=editform_bca&id=<%=user.getId() %>" class="btn btn-dark">Update</a></td>
</tr>
<%
}
%>
</table>
</div>


  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>

</body>

</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="collegefinder.model.User" %>
    <%@ page import ="collegefinder.dao.DAO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/insert_update.css">
<title>Update_Bca</title>
</head>
<body>
<%
User user = new User();
DAO dao = new DAO();
%>
<div class="insert_update">
<h1>Update Form for <span>BCA</span></h1><hr>
<form method="POST" action="UserHandler" name = "editform_bca">
<input type="hidden" name="command" value="update_bca">
<%
String uid = request.getParameter("id");
if(!(uid == null)){
	int id = Integer.parseInt(uid);
	user= dao.getUserById1(id);
%>
<div class="form-group">
      <label for="inputid">ID</label>
      <input type="text" class="form-control" name="id" value="<%= user.getId() %>">
    </div>
    <div class="form-group">
      <label for="inputCollegeName">CollegeName</label>
      <input type="text" class="form-control" name="cname" value="<%= user.getCollegeName() %>" placeholder="College Name" >
    </div>
  <div class="form-group">
    <label for="inputCollegeAddress">CollegeAddress</label>
    <input type="text" class="form-control" name="cadd" value="<%= user.getCollegeAddress() %>" placeholder="College Address">
  </div>
  <div class="form-group">
    <label for="inputUniversity">University</label>
    <input type="text" class="form-control" name="university" value="<%= user.getUniversity() %>" placeholder="University">
  </div>
    <div class="form-group">
    <label for="inputLink">Link</label>
    <input type="text" class="form-control" name="link"  value="<%= user.getLink() %>" placeholder="Link">
  </div>
  <input type="submit"  value="Update" class="btn btn-primary">
<%
}else out.println("Id not found");
%>

</form>
</div>
</body>
</html>
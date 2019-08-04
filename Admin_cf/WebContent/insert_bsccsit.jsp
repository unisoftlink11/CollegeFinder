<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/insert_update.css">
<title>Insert_Bsccsit</title>
</head>
<body>

    <%@ page import="collegefinder.model.User" %>
    <%@ page import ="collegefinder.dao.DAO" %>
<%
User user = new User();
DAO dao = new DAO();
%>
<div class="insert_update">
<h1>Input Form for <span>BSc. CSIT</span></h1><hr>
<form method="POST" action="UserHandler">
<input type="hidden" name="command" value="save_bsccsit">
  <div class="form-group">
      <label for="inputid">ID</label>
      <input type="text" class="form-control" name="id">
    </div>
    <div class="form-group">
      <label for="inputCollegeName">CollegeName</label>
      <input type="text" class="form-control" name="cname" placeholder="College Name">
    </div>
  <div class="form-group">
    <label for="inputCollegeAddress">College Address</label>
    <input type="text" class="form-control" name="cadd" placeholder="College Address">
  </div>
  <div class="form-group">
    <label for="inputUniversity">University</label>
    <input type="text" class="form-control" name="university" placeholder="University">
  </div>
    <div class="form-group">
    <label for="inputLink">Link</label>
    <input type="text" class="form-control" name="link" placeholder="Link">
  </div>
  <input type="submit"  value="Insert" class="btn btn-primary">
  </form>
  </div>
</body>
</html>
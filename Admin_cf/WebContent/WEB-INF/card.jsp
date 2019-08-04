<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="collegefinder.dao.DAO" %>
 <%@ page import= "java.util.*" %>
<%@ page import="collegefinder.model.User" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<body>
 <%
    DAO dao = new DAO();
    List<User> userList = dao.getAllUser2();

%>
  <%
for(User user: userList){
%>
<div class="card" style="width: 40rem; margin-left:250px;">
  <div class="card-body">
    <h5 class="card-title"><%= user.getCollegeName() %></h5>
    <h6 class="card-subtitle mb-2 text-muted"><%=user.getCollegeAddress() %></h6>
    
    <a href="#" class="card-link"><%=user.getLink() %></a>
<%
}
%>
    
  </div>
</div>
</body>
</html>
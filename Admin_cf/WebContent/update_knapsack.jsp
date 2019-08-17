<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="collegefinder.model.User" %>
<%@ page import ="collegefinder.dao.DAO" %>
<%@ page import ="collegefinder.model.KnapsackModel" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="css/insert_update.css">
<title>Update_Bsccsit</title>
</head>
<body>
     <%
    DAO dao = new DAO();
    KnapsackModel model = new KnapsackModel();
/* 	List<KnapsackModel> knapuserList= dao.getKnapInfo();
	List<KnapsackModel> user = new ArrayList<KnapsackModel>(); */
	
%>
<div class="insert_update">
<h1>Update Form for <span>BSc. CSIT</span></h1><hr>
 <form method="POST" action="UserHandler" name = "editform_knapsack">
<input type="hidden" name="command" value="updateknapsack">
<%
String uid = request.getParameter("id");
if(!(uid == null)){
	int id = Integer.parseInt(uid);
	model= dao.getKnapModelById(id);
%>
<div class="form-group">
      <label for="inputid">ID</label>
      <input type="text" class="form-control" name="id" value="<%=model.getId()%>">
    </div>
    <div class="form-group">
      <label for="inputCollegeName">CollegeName</label>
      <input type="text" class="form-control" name="CollegeName" value="<%=model.getCollegeName()%>">
    </div>
  <div class="form-group">
    <label for="inputCollegeAddress">Price</label>
    <input type="text" class="form-control" name="Price" value="<%=model.getWt() %>">
  </div>
  <div class="form-group">
    <label for="inputUniversity">Rank</label>
    <input type="text" class="form-control" name="Rank" value="<%=model.getVal()%>">
  </div>
  <input type="submit"  value="Update" class="btn btn-primary">
<%
}else out.println("Id not found");
%>
</form>
</div>
</body>
</html>
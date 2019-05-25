<%@ page import=" models.Item" %>
<%@ page import=" javax.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%
	User user = new User();
	String itemsGrid = "";
	
	if (request.getParameter("hidMode") !=null && request.getParameter("hidMode").equalsIgnoreCase("save"))
	{
		rudFeedback = item.saveAnItem(request.getParameter("txtItemName"),request.getParameter("txtItemDesc"));
	}	
	if (request.getParameter("hidMode") !=null && request.getParameter("hidMode").equalsIgnoreCase("update"))		
	{
		rudFeedback = item.updateAnItem(request.getParameter("hidID"),request.getParameter("txtItemName"),request.getParameter("txtItemDesc"));
	}
	if (request.getParameter("hidMode") !=null && request.getParameter("hidMode").equalsIgnoreCase("remove"))
	{
		rudFeedback = item.deleteAnItem(request.getParameter("hidID"));
	}
	itemsGrid = item.getItems();
%>  
   
    
    
    
    
    
    
    
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<script type="text/javascript" src=Controllers/jQuery.js></script>
<script type="text/javascript" src=Controllers/controllerMain.js></script>
</head>
<body>
<form id="formLogin" action="index.jsp" method="post">
	UserName <input id="txtUserName" name="txtUserName" type="text"> <br>
	Password <input id="txtPassword" name="txtPassword" type="password"> <br>
	<input id="btnLogin" name="btnLogin" type="button" value="Login"><br>
	<div id="divStsMsgLogin">

	</div>
</form>

</body>
</html>
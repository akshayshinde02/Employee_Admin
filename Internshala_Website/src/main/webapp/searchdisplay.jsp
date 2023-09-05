
<%@page import="com.dao.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Details</title>
    <link rel="stylesheet" href="styles.css">
</head>

<style>

table {
    width: 100%;
    border-collapse: collapse;
    border: 1px solid #ccc;
}

th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ccc;
}

th {
    background-color: #f2f2f2;
    font-weight: bold;
}

tbody tr:nth-child(even) {
    background-color: #f2f2f2;
}

tbody tr:hover {
    background-color: #ddd;
}



</style>

<script>
var responseMessage = '<%= request.getAttribute("respMsg") %>';
if(responseMessage==='200'){
alert('Success: '+responseMessage+', Successfully Searched');


}
else{
	alert('Failed: '+responseMessage+', Enter Valid Searched !');
setTimeout(function() {
    window.location.href = "search.jsp"; // Redirect to the desired page
}, 1000); 
}
    </script>

<body>
    <div class="container">
        <h1>Employee Details</h1>
       
       
        <% User emp = (User) request.getAttribute("emp"); %>
         <% if(emp == null)  {%>
         
         <p> No Employee Found in Database</p>
       
			
			<% }else{ %>
			
			<table border="1" cellspacing="0">
	
		<tr>
		<th>Id</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Address</th>
		<th>Email</th>
		<th>Gender</th>
		<th>Number</th>
		<th>Country</th>
		<th>City</th>
		<th>Birth Date</th>
		<th>Skills</th>
		
		</tr>     
        <tr>
				<td><%= emp.getId() %></td>
				<td><%= emp.getFirstname() %></td>
				<td><%= emp.getLastname() %></td>
				<td><%= emp.getAddress() %></td>
				<td><%= emp.getEmail() %></td>
				<td><%= emp.getGender() %></td>
				<td><%= emp.getNumber() %></td>
				<td><%= emp.getCountry() %></td>
				<td><%= emp.getCity() %></td>
				<td><%= emp.getDate() %></td>
				<td><%= emp.getSkills() %></td>
				
				
		</tr>
		</table>
			
    <%} %>
        
       
    
    </div>
    
    <button class="mt-3 mb-3 btn btn-secondary dj" onclick="window.location.href = 'home.jsp';">Back</button>
</body>
</html>

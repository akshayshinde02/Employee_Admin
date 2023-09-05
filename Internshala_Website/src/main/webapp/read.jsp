<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.List" %>
<%@page import="com.dao.*" %>

<%
	Display r = new Display();
	List<User> employees = r.getAllEmployees();
	
	Delete d = new Delete();
	// d.deleteEmp(1);
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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

.uq{
	
	text-align:center;
}

tbody tr:hover {
    background-color: #ddd;
}



</style>

<body>

<h1>Employees Information</h1>

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
		
		<% for(User emp : employees)  {%>
		
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
				<td>
			<form onsubmit="return confirm('Are you sure you want to delete this employee?');" action="delete" method="post">
            <input type="hidden" name="employeeId" value="<%= emp.getId() %>" >
            <button type="submit"  class="btn btn-danger">Delete</button>
        		</form><br>
			<form onsubmit="return confirm('Are you sure you want to Update this employee?');" action="newupdate.jsp" method="post">
            <input type="hidden" name="employeeId" value="<%= emp.getId() %>" >
            <button type="submit"  class="btn btn-warning">Update</button>
        		</form>
				
				</td>
				
				
			</tr>
			
		<% } %>
		
		
</table>

<button class="mt-3 mb-3 btn btn-secondary dj" onclick="window.location.href = 'home.jsp';">Back</button>


<script>
        function goToPage2() {
            // Redirect to page2.jsp when the button is clicked
            window.location.href = "update.jsp";
        }
    </script>

</body>

</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        textarea,
        input[type="tel"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>

<body>
 <%
        int id = Integer.parseInt(request.getParameter("employeeId"));
    %>

<div class="container">

	<h1>New Employee Details</h1>
	
	<form method="post" action="update">
	
	<label> Employee Id</label>
	<input type="text" name="id" value=<%= id %>><br>
	 <label for="first-name">First Name:</label>
        <input type="text" id="first-name" name="first-name"><br>

    
        <label for="last-name">Last Name:</label>
        <input type="text" id="last-name" name="last-name"><br>


        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br>

        
        <label for="mobile-number">Mobile Number:</label>
        <input type="text" id="mobile-number" name="mobile-number"><br>

        
        <label for="date-of-birth">Date Of Birth:</label>
        <input type="text" id="date-of-birth" name="date-of-birth" placeholder="dd/mm/yyyy"><br>

 
        <label>Gender:</label>
        <input type="radio" id="male" name="gender" value="Male">
        <label for="male">Male</label>
        <input type="radio" id="female" name="gender" value="Female">
        <label for="female">Female</label><br>

  
        <label for="address">Address:</label>
        <textarea id="address" name="address"></textarea><br>


        <label for="country">Country:</label>
        <select id="country" name="country">
            <option value="">--Select Country--</option>
            <option value="usa">USA</option>
            <option value="usa">India</option>
            <option value="canada">Canada</option>
            <option value="uk">UK</option>
        </select><br>


        <label for="city">City:</label>
        <input type="text" id="city" name="city"><br>


        <label>Skills:</label><br>
        <input type="checkbox" id="aws" name="skills" value="AWS">
        <label for="aws">AWS</label><br>
        <input type="checkbox" id="devops" name="skills" value="DevOps">
        <label for="devops">DevOps</label><br>
        <input type="checkbox" id="full-stack" name="skills" value="Full Stack Developer">
        <label for="full-stack">Full Stack Developer</label><br>
        <input type="checkbox" id="middleware" name="skills" value="Middleware">
        <label for="middleware">Middleware</label><br>
        <input type="checkbox" id="qa-automation" name="skills" value="QA-Automation">
        <label for="qa-automation">QA-Automation</label><br>
        <input type="checkbox" id="webservices" name="skills" value="WebServices">
        <label for="webservices">WebServices</label><br>
	
	 <button type="submit" >Submit</button>
	</form>


</div>

</body>


<script>



</script>
</html>
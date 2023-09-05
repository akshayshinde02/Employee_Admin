<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Details Form</title>
</head>

<style>
    body {
        font-family: Arial, sans-serif;
    }

    h1 {
        text-align: center;
    }

    form {
        max-width: 500px;
        margin: 0 auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }

    label {
        display: block;
        margin-bottom: 5px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="radio"],
    textarea,
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 3px;
        font-size: 16px;
    }

    input[type="radio"] {
        display: inline-block;
        margin-right: 10px;
    }

    textarea {
        resize: vertical;
    }

    select {
        height: 36px;
    }

    input[type="checkbox"] {
        margin-right: 5px;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        padding: 10px 20px;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
</style>

<body>
    <h1>Employee Details Form</h1>
    <form action="add" method="post">
     
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

 
        <input type="submit" value="Submit">
    </form>
    <button class="mt-3 mb-3 btn btn-secondary dj" onclick="window.location.href = 'home.jsp';">Back</button>
</body>
</html>

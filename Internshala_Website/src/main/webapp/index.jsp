<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="path-to-your-font-awesome/css/all.min.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="path-to-font-awesome/css/all.min.css" rel="stylesheet">
    <link href="/bundles/styles?v=lPGPuSt_xKxNmptTCKJ8QNFrLXCkhCS7B-5FH-7RYpA1" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/84e67a5a3d.js" crossorigin="anonymous"></script>
</head>

<style>

    body{

        background-color: rgb(209, 209, 209);
    }

    .header{
        text-align: center;
    }

    input,button{
        width: 60%;
        padding: 8px;
    }

    label{
        margin-left: -100px;
    }

    .check{
        margin-left: -140px;
    }

    .form{

        background-color: white;
       margin-left: 500px;
       margin-right:500px;
    }
    .container{
        background-color: rgb(147, 171, 241);
    }
</style>

<body>

    <div class="header">

        <h1>JALA Academy</h1> 

        <h2>Login Credentials</h2>
        <h3>Email : training@jalaacademy.com <br>
            Password : jobprogram</h3>

        <h3 style="background-color: yellow;" class="form">Learn Everything on Real-Time Scenarios</h3>

        <div class="form">
        <form action="login" method="post" onsubmit="clearPassword()">
            
            <h4>Sign in</h4><br>

            <input type="text" placeholder="Email or Mobile No" name="email"><br><br>
            <input type="password" placeholder="Password" name="password" > <br><br>
            <label for="checkbox">Check box:</label>
            <input type="checkbox" class="check" id="checkbox" name="checkbox"><br>
            <input type="submit" onclick="clearPassword()" name="submit" id=""><br>

            <hr>
            <h5>-Or-</h5>
            

        </form><br>
        
        <form action="">
        <button type="submit">Forget Password</button>
        </form>
        
        <form action="adminlogin.jsp">
            <button type="submit" >Admin Login</button>
            </form><br>
    </div>

</div> <br>

<div class="container">

    <h4>JALA Academy offers Job Guaranteed Programs for Freshers to 12 years’ experience on Full Stack Development / Automation Testing / Dev-Ops / QA/ SDET/Cyber Security / RPA / Cloud Technologies. Training would be completely on live Project scenarios Read our website JALA Academy for more details : https://jalaacademy.com/</h4>
</div>
    
    
</body>
<script>
function clearPassword() {

    document.getElementById("password").value = "";
}
</script>




</html>
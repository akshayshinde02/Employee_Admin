<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link href="path-to-font-awesome/css/all.min.css" rel="stylesheet">
    <link href="/bundles/styles?v=lPGPuSt_xKxNmptTCKJ8QNFrLXCkhCS7B-5FH-7RYpA1" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/84e67a5a3d.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>

<style>
    .first{
        background-color: antiquewhite;
    }

    .card{
        /* height: 150%; */
        height: 90vh;
            overflow: auto; 
    }
    .dj{
        margin-left: 1200px;
    }
</style>

<body>

    <div class="fluid-container bg-body-secondary" style="display: flex;">
        <h1 class="m-lg-2">Mungus</h1>
        <button class="mt-3 mb-3 btn btn-secondary dj" onclick="window.location.href = 'index.jsp';"><i class="fas fa-sign-out-alt"></i>Logout</button>
    </div>
    <div class="row">
     
        
        <div class="col-md-2 card1">
            <div class="card first">
                <div class="card-body">
                    <h2><i class="fas fa-user"></i>Guest User</h2>
                    <p>User</p>
                    <button type="submit" class="btn btn-secondary"><i class="fas fa-home fa-btn"></i> Home</button><br><br>

                    <div class="group">
                        <button type="button" class="btn btn-secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" ><i class="fas fa-users"></i>
                            Employee
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="search.jsp">Search Employee</a>
                            <a class="dropdown-item" href="add.jsp">Add Employee</a>
                            <a class="dropdown-item" href="read.jsp">Display Employee</a>
                           
                    </div><br><br>
                    <div class="group">
                        <button type="button" class="btn btn-secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" > <i class="fas fa-ellipsis-h"></i>
                            More
                        </button>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" onclick="loadContent()">Load Content</a>
                            <a class="dropdown-item" onclick="loadContent1()" href="#">Menu</a>
                            <a class="dropdown-item" onclick="loadContent1()">Collapsible Content</a>
                            <a class="dropdown-item" href="#">Images</a>
                            <a class="dropdown-item" href="#">Slider</a>
                            <a class="dropdown-item" href="#">Tooltips</a>
                            <a class="dropdown-item" href="#">Popups</a>
                            <a class="dropdown-item" href="#">Links</a>
                            <a class="dropdown-item" href="#">Autocomplete</a>
                            <a class="dropdown-item" href="#">CSS Properties</a>
                            <a class="dropdown-item" href="#">iFrames</a>
                            <a class="dropdown-item" href="#">Settings</a>                     
                            
                            
                    </div>


            
                    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.min.js"></script>
                </div><br>

                <div class="group">
                    <button type="button" class="btn btn-secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" > <i class="fas fa-cog"></i>
                        Settings
                    </button>
                   
                </div><br><br>
                    
                   
                </div>
           </div> </div>
        </div>



        <div class="col-md-10" id="content-container">
            <div class="card">
                <div class="card-body">
                   
                    <p>Welcome</p>
                </div>
            </div>
        </div>
    </div>



</body>

 <script>
        // Function to load content from a JSP page
        function loadContent() {
        	 var content = "<h4>Congratulations, You are in the best place to learn the technologies for JOB. Please strictly follow the plan for the first 45 days to see the unbelievable results. You must UNLEARN to LEARN new things every day as technologies are changing faster than ever and Because the old rules will no longer apply...and so your old knowledge is. It's time for us to think beyond.It's not just learning technologies, Also You learn how to use your knowledge and experience to get a job in less than 100 days.</h4>";

             // Display the content in the content container
             document.getElementById("content-container").innerHTML = content;
        }
        function loadContent1() {
            var content = "<h4>Unlearning is the process of realizing that something which we learned earlier is incorrect, ineffective, or obsolete, admitting it and deciding to erase such bad conditioning and misconceptions from our mind for good. It is the process of exploring what we have stored in our system and deleting all the unnecessary data. It is the process of saying bye to an old, obsolete, and outdated paradigm and embracing a new paradigm and willingly undergoing a paradigm shift. Unfortunately, we are controlled by myths which do not allow us to open our eyes to reality</h4>";

        
            document.getElementById("content-container").innerHTML = content;
        }
    </script>

</html>
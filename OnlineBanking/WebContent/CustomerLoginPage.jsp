<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<!------ Include the above in your HEAD tag ---------->


<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<title>Samridhi Customer Login</title>
<link rel ="icon" type="image/ico" href="only globe.jpg"/>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
    <header>
       <nav class="navbar navbar-expand-lg navbar-light bg-info text-light py-1 main-nav">
          <div class="container">
            <a class="navbar-brand" href="index.html"><img src="logoonline.jpg" alt="Logo"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                    <a class="nav-link text-uppercase font-weight-bold text-white" href="index.html"><i class="fa fa-fw fa-home fa-lg"></i>Home<span class="sr-only">(current)</span></a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link text-uppercase font-weight-bold text-white" href="#story"><i class="fa fa-fw fa-question-circle fa-lg"></i>About</a>
                  </li>
                  <li class="nav-item active">
                    <a class="nav-link  text-uppercase font-weight-bold text-white" href="#contact"><i class="fa fa-fw fa-envelope fa-lg"></i>Contact</a>
                  </li>
                </ul>
              </div>
          </div>
        </nav>
    </header>

  </body>
</html>
<div class="alert alert-danger">
    <strong>CARE : </strong> Username and Password are case sensitive<span style="display:inline-block; width: 800px;"></span><a  class="text-muted">Welcome to personal Internet Banking</a>
  </div>
<section class="login-block">


    <div class="container" >
	<div class="row">
		<div class="col-md-4 login-sec">
		    <h2 class="text-center">Login</h2>
		    <form action="CustomerLoginServlet" method="post">
		    <form class="login-form"> 
  <div class="form-group">
    <label for="userName" class="text-uppercase"><span class="req">UserName: </span></label>
    <input type="text" name="userName" class="form-control" placeholder="username" required>
    
  </div>
  <div class="form-group">
    <label for="password" class="text-uppercase"><span class="req">Password: </span></label>
    <input type="password" name="password" class="form-control" placeholder="password" required>
  </div>
    <div class="form-check">
    <button type="submit" class="btn btn-sm btn-success float-right">Login</button>
  </div>
</form>
</form>
<div class="copy-text"><a href="ForgetPassword">Forget Password?</a></div>
</br>Don't you have an account?
<div class="form-check">
  <button type="button" class="btn btn-white btn-sm" data-toggle="modal" data-target="#myModal">Register here</button>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      <style ="height:10%">
      <h3>Registration</h3>
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        
        </div>
        </style>
        <form action="CustomerRegisterServlet" method="post">
        <div class="modal-body">
        <h3>1. Personal Details</h3></br>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">First Name :</label>
                    <div class="col-sm-10">
                        <input type="text" id="firstName" name="firstName" placeholder="First Name" class="form-control" autofocus>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label">Last Name :</label>
                    <div class="col-sm-10">
                        <input type="text" id="lastName" name="lastName" placeholder="Last Name" class="form-control" autofocus>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="phno" class="col-sm-3 control-label">Phone Number :</label>
                    <div class="col-sm-10">
                        <input type="text" id="PhoneNumber" name="phno" placeholder="Phone Number" class="form-control" autofocus>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="phno" class="col-sm-3 control-label">Address :</label>
                    <div class="col-sm-10">
                        <input type="text" id="Address" name="address" placeholder="Address" class="form-control" autofocus>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth :</label>
                    <div class="col-sm-10">
                        <input type="date" id="birthDate" name="dateOfBirth" class="form-control">
                    </div>
                </div>
                
                
                <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="femaleRadio" name="gender" onclick = \"getAnswer('Female') value="Female">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" id="maleRadio" name="gender" onclick = \"getAnswer('Male') value="Female">Male
                                </label>
                            </div>
                            
                        </div>
                    </div>
                </div> 
                
                
                <div class="form-group">
                    <label for="aadharCardnumber" class="col-sm-3 control-label">Aadhar Card number :</label>
                    <div class="col-sm-9">
                        <input type="text" id="Adhar Card number" name="aadharNumber" placeholder="Aadhar Card number" class="form-control">
                    </div>
                </div> 
                
                
                <hr>
                <h3>2. Account Details</h3></br>
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">Account Type :</label>
                    <div class="col-sm-9">
                        <select value="Account Type"  class="text-secondary" name="accountType" style="width: 540px; height:33px"> 
                        <option value="Select Account Type">Select Account Type</option> 
    <option value="Savings">Savings</option> 
    <option value="Current">Current</option> 
</select> 
                        
                     
                        
                    </div>
                </div>
                
               
                <hr>
                <h3>3. Login credentials</h3></br>
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">UserName :</label>
                    <div class="col-sm-9">
                        <input type="text" id="UserName" name="userName" placeholder="UserName" class="form-control" autofocus>
                    </div>
                </div>
            
                
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">Password :</label>
                    <div class="col-sm-9">
                        <input type="password" id="Password" name="password" placeholder="Password" class="form-control" autofocus>
                    </div>
                </div>
               
                <div class="form-group">
                    <label for="hint" class="col-sm-3 control-label">Hint :</label>
                    <div class="col-sm-9">
                        <input type="text" id="hint" name="hint" placeholder="Hint" class="form-control" autofocus>
                    </div>
                </div>
               <!-- /.form-group -->
                                            
        </div>
        <div class="modal-footer">
         <div class="row">
         <button type="submit" class="btn btn-success">Register</button><span style="display:inline-block; width: 10;"></span>
          <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button><span style="display:inline-block; width: 10;"></span>
          
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</form>

</body>
</html>

</form>
<br><br>
    <ul> 
       <li>Give the correct information for the above mentioned fields</li>
       <li>Do not provide your username and password anywhere other than in this page</li>
       <li>Your username and password are highly confidential.Never part with them.SNB will never ask for this information.</li></div>
		</ul>
		<div class="col-md-8 banner-sec">
            <div id="carouselExampleIndicators" class=
            
            "carousel slide" data-ride="carousel">
                 <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                  </ol>
            <div class="carousel-inner" role="listbox">
    <div class="carousel-item active">
      <img class="d-block img-fluid" src="loginPicture.jpg" alt="First slide">
      <div class="carousel-caption d-none d-md-block">
        <div class="banner-text">
            <h2>Experience the best way of banking</h2>
        </div>	
  </div>
    </div>
            </div>	   
		    
		</div>
	</div>
</div>
</section>
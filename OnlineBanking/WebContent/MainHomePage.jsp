<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>Samriddhi Home Page</title>
<link rel ="icon" type="image/ico" href="only globe.jpg"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>  
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.fa {
  padding: 20px;
  font-size: 30px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
  border-radius: 50%;
  color:black;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}

.fa-pinterest {
  background: #cb2027;
  color: white;
}
  .sticky-container{
    padding:0px;
    margin:0px;
    position:fixed;
    right:-175px;
    top:230px;
    width:210px;
    z-index: 1100;
}
.sticky li{
    list-style-type:none;
    background-color:#fff;
    color:#efefef;
    height:43px;
    padding:0px;
    margin:0px 0px 1px 0px;
    -webkit-transition:all 0.25s ease-in-out;
    -moz-transition:all 0.25s ease-in-out;
    -o-transition:all 0.25s ease-in-out;
    transition:all 0.25s ease-in-out;
    cursor:pointer;
}
.sticky li:hover{
    margin-left:-115px;
  background:#212094;
}
.sticky li img{
    float:left;
    margin:5px 4px;
    margin-right:10px;
   background:#212094;
}
.sticky li p{
    padding-top:5px;
    margin:0px;
    line-height:16px;
    font-size:11px;
    background:#212094;
}
.sticky li p a{
    text-decoration:none;
    background:#212094;
}
.sticky li p a:hover{
    text-decoration:underline;
    background:#212094;
}
 body {margin:150px;height:1500px;background-color:white;
 }
  .carousel-inner img {
    width: 100%;
    height: 500px;
   
  }
  .icon-bar {
  position: fixed;
  top: 50%;
  -webkit-transform: translateY(-50%);
  -ms-transform: translateY(-50%);
  transform: translateY(-50%);
}
.navbar{
margin-left:0px;
margin-right:0px;
}
.img{
margin-left:180px;
margin-right:180px;
}
.icon-bar a {
  display: block;
  text-align: center;
  padding: 16px;
  transition: all 0.3s ease;
  color: white;
  font-size: 20px;
}
.icon-bar a:hover {
  background-color: #000;
}

.facebook {
  background: #3B5998;
  color: white;
}
.twitter {
  background: #55ACEE;
  color: white;
}

.google {
  background: #dd4b39;
  color: white;
}

.linkedin {
  background: #007bb5;
  color: white;
}

.youtube {
  background: #bb0000;
  color: white;
}

.content {
  margin-left: 75px;
  font-size: 30px;
}

* {
  margin: 0;
  padding: 0;
}


header {
  padding: 50px 0;
}
header h1 {
  color: white;
  text-shadow: 1px 3px 4px rgba(0, 0, 0, 0.4);
  text-align: center;
  font-size: 40px;
  letter-spacing: 0.4px;
  font-family: "Raleway", sans-serif;
}

.container {
  display: flex;
  flex-wrap: wrap;
  flex-direction: row;
  justify-content: center;
  padding: 0 20px;
  margin-top:0px;
}
.container .thumbex {
  margin: 10px 20px 30px;
  width: 100%;
  min-width: 250px;
  max-width: 200px;
  height: 200px;
  -webkit-flex: 1;
  -ms-flex: 1;
  flex: 1;
  overflow: hidden;
  outline: 2px solid white;
  outline-offset: -15px;
  background-color: blue;
  box-shadow: 5px 10px 40px 5px rgba(0, 0, 0, 0.5);
}
.container .thumbex .thumbnail {
  overflow: hidden;
  min-width: 100px;
  height: 300px;
  position: relative;
  opacity: 0.88;
  backface-visibility: hidden;
  transition: all 0.4s ease-out;
}
.container .thumbex .thumbnail img {
  position: absolute;
  z-index: 1;
  left: 50%;
  top: 50%;
  height: 100%;
  width: auto;
  transform: translate(-50%, -50%);
  backface-visibility: hidden;
}
.container .thumbex .thumbnail span {
  position: absolute;
  z-index: 2;
  top: calc(10px 50px);
  left: 0;
  right: 0;
  background: rgba(0, 0, 0, 0.7);
  padding: 10px 50px;
  margin: 0 45px;
  text-align: center;
  font-size: 24px;
  color: white;
  font-weight: 300;
  font-family: "Raleway", sans-serif;
  letter-spacing: 0.2px;
  transition: all 0.3s ease-out;
}
.container .thumbex .thumbnail:hover {
  backface-visibility: hidden;
  transform: scale(1.15, 1.15);
  opacity: 1;
}
.container .thumbex .thumbnail:hover span {
  opacity: 2;
}
 
body {
  height: 100%;
   background-image: url("");
   background-color:#DFDFEE;
  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.bg { 
  /* The image used */

  /* Full height */
  height: 100%; 

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  padding: 60px;
  text-align: center;
  background-color: #f1f1f1;
  margin-left:50px;
  margin-right:50px;
}
.bottom-right {
  position: absolute;
  bottom: 8px;
  right: 16px;
}
.border {
  border: 10px solid black;
}
.div1{
border:1px solid black;
margin-top:0px;
margin-bottom:20px;
background-color:#f1f1f1;
}
 </style>
</head>
<body background="mainbackground.jpg";>
<body>
<div class="sticky-container">
    <ul class="sticky">
        <li>
            <img src="facebook.png" width="32" height="32">
            <p><a href="https://www.facebook.com/" target="_blank"><font color="white">Follow Us on<br>Facebook</a></p>
        </li>
        <li>
            <img src="twitter.png" width="32" height="32">
            <p><a href="https://www.twitter.com/" target="_blank"><font color="white">Follow Us on<br>Twitter</a></p>
        </li>
        <li>
            <img src="google+.png" width="32" height="32">
            <p><a href="https://www.plus.google.com/" target="_blank"><font color="white">Follow Us on<br>Google+</a></p>
        </li>
        <li>
            <img src="linkedin.jpg" width="32" height="32">
            <p><a href="https://www.linkedin.com/" target="_blank"><font color="white">Follow Us on<br>LinkedIn</a></p>
        </li>
        <li>
            <img src="youtube.png" width="32" height="32">
            <p><a href="http://www.youtube.com/" target="_blank"><font color="white">Subscribe on<br>YouYube</a></p>
        </li>
        <li>
            <img src="pinintrest.jpg" width="32" height="32">
            <p><a href="https://www.pinterest.com/" target="_blank"><font color="white">Follow Us on<br>Pinterest</a></p>
        </li>
    </ul>
</div>
<div class="contaier">
  <nav class="navbar navbar-expand-lg navbar-light bg-info text-light py-0">
          <div class="container">
            <a class="navbar-brand"><img src="logofinal.jpg" alt="Logo"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse " id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">  
                   <a class="navbar-brand" href="index.html"><img src="logoonline.jpg" alt="Logo"></a>
                </ul>
              </div>
          </div>
        </nav>  </br>
        <nav class="navbar navbar-expand-lg navbar-light bg-info text-light py-1">
        <div class="container">
        <div class="collapse navbar-collapse" id="navbarCollapse2">
            <div class="navbar-nav">
                <a href="#" class="nav-item nav-link text-white active"><span style="display:inline-block; width: 10px;"></span><span style="display:inline-block; width: 10px;"></span>Deals & More<span style="display:inline-block; width: 10px;"></span></a>
                <a href="#" class="nav-item nav-link text-white active">About Us<span style="display:inline-block; width: 10px;"></span></a>
                <a href="#" class="nav-item nav-link text-white active">Contact</a><span style="display:inline-block; width: 10px;"></span>
                <a href="#" class="nav-item nav-link text-white active">Help</a>
                
                </div>
                </div>
                </div>
    </nav>
    <marquee BEHAVIOR=SCROLL 
 
     direction="left"
     loop="30"
     scrollamount="8"
     scrolldelay="1"
     behavior="alternate"
     width="100%"
     height=40
     bgcolor="#F0C179"
     
     >
Dear Onlinesnb users, Internet Banking services will not be accessible to you if your mobile number is not updated in the Bank records. Please register your mobile number immediately to enjoy uninterrupted services.        |          Dear customer, beware of fake sites- before logging into onlinesnb for making transactions, please ensure that the URL address bar begins with https:// with padlock symbol. Click the padlock to check the Security Certificate.        |         Longer the time taken to notify, higher would be the risk of loss to you.        |      Please be cautious.
</marquee>
    <div class="row "><span style="display:inline-block; width: 60px;"></span>
    <div class="col-sm-5 div1 text-center">
    <span style="display:inline-block; width: 0px;"></span><i class="fa fa-fw fa-user fa-4x"><span style="display:inline-block; width: 500px;"></span></i>
    <a href="CustomerLoginPage.jsp"><h4><font color="blue">Customer Login</font></h4></a>
    </div><span style="display:inline-block; width: 65px;"></span>
    <div class="col-sm-5 div1 text-center">
    <i class="fa fa-fw fa-users fa-4x"><span style="display:inline-block; width: 500px;"></span></i>
    <a href="ManagerLoginPage.jsp"><h4><font color="blue">Employees Login</font></h4>
    </div>
    </div>
  </br>
  </div>
<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="home3.jpg">   
    </div>
    <div class="carousel-item">
      <img src="net-banking.jpg">
    </div>
    <div class="carousel-item">
      <img src="pic 3.jpg">   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>
<div class="container">
  <div class="thumbex">
    <div class="thumbnail"> <img src="savings1.jpg"><span>Savings</span></div>
  </div>
  <div class="thumbex">    
    <div class="thumbnail"><img src="money transfer.jpg"/><span>Transfers</span></div>
  </div>
  <div class="thumbex">
    <div class="thumbnail"><img src="loan.png" /><span>Loan</span></div>
  </div>
<div class="thumbex">
    <div class="thumbnail"><img src="fixeddeposits.jpeg" /><span>Fixed Deposit</span></div>
  </div>
<div class="thumbex">
    <div class="thumbnail"><img src="withdraw1.png" /><span> Withdraw</span></div>
  </div>
<div class="thumbex">
    <div class="thumbnail"><img src="offerssummer.png" /><span>Offers</span></div>
  </div>
  </div>

<div class="jumbotron text-center text-dark" style="margin-bottom:0">
  <footer class="page-footer font-small pt-0">
     <div class="row">
   
         <div class="col-sm-4">
             <b><p>
                 Information & Research Help
             </p></b>
             <p>
                 630-844-5437 (phone)
             </p>
             <p>
                 630-844-3848 (fax)
             </p>
             <p>
                 630-796-7615 (text)
             </p>
         </div>
         
          <div class="col-sm-4">
             <b><p>
                 @SAMRIDHI Terms and conditions
             </p></b>
             <p>
                 I agree to abide by theq1
             </p>
            <b> <p>
                Bank's Terms and Conditions 
             </p></b>
             <p>
                and rules and the changes
             </p>
             <p>
                in terms and conditions.
             </p>
             
         </div>
         <div class="col-sm-4">
             <b><p>
                e-mail 
             </p></b>
             <p>
                SNBonline@gmail.com
             </div>
</div> 
         </footer>
</div>
</body>
</html>

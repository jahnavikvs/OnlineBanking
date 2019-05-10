<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List,com.ts.dao.EmployeeDAO,com.ts.dto.Employee,com.ts.dao.AccountsDAO,com.ts.dto.Accounts"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<title>Samridhi Manager Home Page</title>
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
<style>
.btn:focus, .btn:active, button:focus, button:active {
  outline: none !important;
  box-shadow: none !important;
}

#image-gallery .modal-footer{
  display: block;
}

.thumb{
  margin-top: 15px;
  margin-bottom: 15px;
}
</style>
<head>
<% int empId = (Integer)session.getAttribute("empId"); 
   //int accNo = (Integer)session.getAttribute("accNo");
   String userName = (String)session.getAttribute("userName");
   EmployeeDAO employeeDao = new EmployeeDAO();
   Employee employee = employeeDao.getEmployee(userName);
   AccountsDAO accountsDao = new AccountsDAO();
   List<Accounts> accounts = accountsDao.getAllAccounts();
   int x = 0;
   for (Accounts account: accounts) {
	   if (account.getStatus().equalsIgnoreCase("Pending")) {
		   x++;
	   }
   }
   //System.out.println(redgCustomer);
   //System.out.println(accNo);
   System.out.println(userName);
%>
<div class="container">
 <nav class="navbar navbar-expand-lg navbar-light bg-info text-light py-1 main-nav">
          <div class="container">
            <a class="navbar-brand" href="index.html"><img src="logoonline.jpg" alt="Logo"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" 

aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
              </button>

              <div class="collapse navbar-collapse " id="navbarSupportedContent">
                 <ul class="navbar-nav ml-auto">
                  <li class="nav-item active">
                    <a class="nav-link text-uppercase font-weight-bold text-white" href="index.html"><i class="fa fa-fw fa-home"></i>Home<span class="sr-only">(current)</span></a>
                  </li>
                  <div class="navbar-collapse collapse">
                                     
                  <li class="nav-item active">
                    <a class="nav-link  text-uppercase font-weight-bold text-white" href="contact.html"><i class="fa fa-fw fa-lock"></i>Logout</a>
                  </li>
    </div>
                </ul>
              </div>
          </div>
        </nav>
        </div>
    </header>
    <h1 class="h3 mb-3"><center>WELCOME TO SAMRIDHI MANAGER HOME PAGE</center></h1>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css" integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
<div class="container">
	<div class="row">
		<div class="row">
		<div class="col-lg- 3 col-md-3 col-xs-4 thumb">
                <a class="thumbnail" href="ManagerHome.html" data-image-id="" data-toggle="modal" data-title=""
                   data-image="viewprofile.png"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="viewprofile2.png" width = "200" height = "200"> 
                          <button type="button" onClick="parent.location='ManagerProfile.jsp'" value="click here" class="btn btn-lg btn-primary">  
                        <h5> My Profile</h5>
                        </button>
                        </a>
                        </div>
                        <div class="col-lg-3 col-md-3 col-xs-4 thumb">
                <a class="thumbnail" href="ViewAllCustomers.jsp" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="customers.png"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="customers.png" width = "250" height = "200">
                         <button type="button" onClick="parent.location='ViewAllCustomers.jsp'" value="click here" class="btn btn-lg btn-primary">
                          <h5>Display All Customers</h5>
                          </button>
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-4 thumb">
                <a class="thumbnail" href="ViewAllEmployees.jsp" data-image-id="" data-toggle="modal" data-title=""
                   data-image="displayallemployees.jpg"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="displayallemployees.jpg" width = "250" height = "200">
                         <button type="button" onClick="parent.location='ViewAllEmployees.jsp'" value="click here" class="btn btn-lg btn-primary">
                         <h5>Display All Employees</h5>
                         </button>
                </a>
            </div>
           
            <div class="col-lg-3 col-md-3 col-xs-4 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title=""
                   data-image="transaction3.png"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="transaction3.png" width = "200" height = "200">
                          <button type="button" onClick="parent.location='ViewAllTransactions.jsp'" value="click here" class="btn btn-lg btn-primary">
                         <h5>View All Transactions</h5>
                         </button>
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-4 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" data-title="Test1"
                   data-image="addemployee2.png" 
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="addemployee2.png" width = "200" height = "200">
                          <button type="button" onClick="parent.location='AddEmployee.jsp'" value="click here" class="btn btn-lg btn-primary">
                          <h5>Add Employee</h5>
                          </button>
                </a>
            </div>
            <div class="col-lg-3 col-md-3 col-xs-4 thumb">
                <a class="thumbnail" href="ViewAllCustomers.jsp" data-image-id="" data-toggle="modal" data-title="Im so nice"
                   data-image="customers.png"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="employeedelete.jpg" width = "200" height = "100">
                         <button type="button" onClick="parent.location='ViewAllCustomers.jsp'" value="click here" class="btn btn-lg btn-primary">
                          <h5>Delete Employee</h5>
                          </button>
                </a>
            </div>
            
            
            <div class="col-lg-3 col-md-3 col-xs-4 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" 
                   data-image="request.png"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="request.png" width = "180" height = "200">
                         <button type="button" onClick="parent.location='Requests.jsp'" value="click here" class="btn btn-lg btn-primary">
                              Requests <span class="badge badge-light"><%=x%></span>
</button>
                </a>      
            </div>
             <div class="col-lg-3 col-md-3 col-xs-4 thumb">
                <a class="thumbnail" href="#" data-image-id="" data-toggle="modal" 
                   data-image="request.png"
                   data-target="#image-gallery">
                    <img class="img-thumbnail"
                         src="benreq.png" width = "180" height = "200">
                         <button type="button" onClick="parent.location='Requests.jsp'" value="click here" class="btn btn-lg btn-primary">
                             Beneficiary Requests <span class="badge badge-light"><%=x%></span>
</button>
                </a>      
            </div>
            
                        </div>
                        </div>
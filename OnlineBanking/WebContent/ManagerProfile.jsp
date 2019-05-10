<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ts.dao.EmployeeDAO,com.ts.dto.Employee"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<!------ Include the above in your HEAD tag ---------->

<html>
<title>Manager Profile</title>
<link rel="icon" type="image/ico"href="only globe.png">
<head>
<style>
body{
    margin-top:20px;
    background:#fff;
}
.card {
    margin-bottom: 1.5rem;
    box-shadow: 0 1px 15px 1px rgba(52,40,104,.08);
}
.card {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 1px solid #e5e9f2;
    border-radius: .2rem;
}
.card-header:first-child {
    border-radius: calc(.2rem - 1px) calc(.2rem - 1px) 0 0;
}
.card-header {
    border-bottom-width: 1px;
}
.card-header {
    padding: .75rem 1.25rem;
    margin-bottom: 0;
    color: inherit;
    background-color: #fff;
    border-bottom: 1px solid #e5e9f2;
}
</style>
<%EmployeeDAO employeeDAO = new EmployeeDAO();
int empId = (Integer)session.getAttribute("empId");
Employee employee = employeeDAO.getEmployee(empId);
session.setAttribute("employee", employee);
%>
</head>
<header>
 <div class="container" style="margin-top:30px">
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
                    <a class="nav-link text-uppercase font-weight-bold text-white" href="index.html"><i class="fa fa-fw fa-home fa-lg"></i>Home<span class="sr-only">(current)</span></a>
                  </li>
                  <div class="navbar-collapse collapse">
                                     
                  <li class="nav-item active">
                    <a class="nav-link  text-uppercase font-weight-bold text-white" href="contact.html"><i class="fa fa-fw fa-sign-out fa-lg"></i>Logout</a>
                  </li>
    </div>
                </ul>
              </div>
          </div>
          </div>
        </nav>
    </header>
    <div class="container">
    <h1 class="h3 mb-3"><center>WELCOME TO SAMRIDHI MANAGER PROFILE</center></h1>
<div class="row">
<div class="col-sm-4">
  <div class="card" style="width:300px">
    <img class="card-img-center" src="managerfinal.png" alt="Card image" style="width:100%">
					<div class="card-body">
     <h4 class="card-title"> Manager Samridhi National Bank </h4>
 
    </div>
    </div>
  </div>
  
          <div class="col-sm-8">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-actions">
                        <div class="card-body">
                            <form>
                                <div class="row">
                                    <div class="col-md-6">    
                                            <label for="inputManagerId">Manager Id</label>
                                            <input type="text" class="form-control" id="inputMangerId" value="${employee.empId }" readonly placeholder="Manager Id">
                                        </div>
                                     <div class="form-group col-md-6">
                                    <label for="inputUsername">User Name</label>
                                    <input type="text" class="form-control" id="inputUsername" value="${employee.userName }" readonly placeholder="userName">
                                </div>
                                        <div class="form-group col-md-6">
                                        <label for="inputFirstName">First name</label>
                                        <input type="text" class="form-control" id="inputFirstName" value="${employee.fName }" readonly placeholder="First name">
                                    </div>
                                     <div class="form-group col-md-6">
                                        <label for="inputLastName">Last name</label>
                                        <input type="text" class="form-control" id="inputLastName" value="${employee.lName }" readonly placeholder="Last name">
                                    </div>
                                     <div class="form-group col-md-6">
                                    <label for="inputSalary">Salary</label>
                                    <input type="double" class="form-control" id="inputSalary" value="${employee.salary }" readonly placeholder="salary">
                                </div>
                                 <div class="form-group col-md-6">
                                    <label for="inputJob">Job</label>
                                    <input type="text" class="form-control" id="inputJob" value="${employee.job }" readonly placeholder="job">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="inputJob">Date Of Join</label>
                                    <input type="text" class="form-control" id="inputJob" value="${employee.dateOfJoin }" readonly placeholder="job">
                                </div>
                                    <div class="form-group col-md-6">
                                        <label for="inputPhone">Phone Number</label>
                                        <input type="text" class="form-control" id="inputPhone" value="${employee.ePhno }" readonly placeholder="Phno">
                                    </div>
                                <div class="form-group col-md-6">
                                    <label for="inputEmail4">Email</label>
                                    <input type="email" class="form-control" id="inputEmail4" value="${employee.eEmail }" readonly placeholder="Email">
                                </div>
                                
                            </form>

                        </div>
                    </div>
                </div>
                </div>
                </div>
               </div>
               </div>
               
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List,java.util.ArrayList,com.ts.dao.CustomerDAO,com.ts.dto.Customer,com.ts.dao.AccountsDAO,com.ts.dto.Accounts"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Samridhi Quick Transactions Page</title>
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
  .fakeimg {
    height: 200px;
    background: #aaa;
  }
  </style>
</head>
<body>
<style>
img.bg {
    min-height: 100%;
    min-width: 1024px;
    width: 100%;
    height: auto;
    position: fixed;
    top: 0;
    left: 0;
}

@media screen and (max-width: 1024px){
    img.bg {
    left: 50%;
    margin-left: 512px; }
}
</style>
<% int cId = (Integer)session.getAttribute("cId");
   CustomerDAO customerDao = new CustomerDAO();
   Customer customer = customerDao.getCustomer(cId);
   List<Accounts> accounts = customer.getAccounts();
   List<Accounts> validaccounts = new ArrayList<Accounts>();
   for (Accounts account: accounts) {
	   if (account.getStatus().equalsIgnoreCase("Approved")) {
		   validaccounts.add(account);
	   }
   }
   session.setAttribute("accountsList",validaccounts);
   for (Accounts account: (List<Accounts>)session.getAttribute("accountsList")) {
	   System.out.println(account);
   }
 %>
<div class="container" style="margin-top:30px">
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
                    <a class="nav-link  text-uppercase font-weight-bold text-white" href="CustomerLogin.html"><i class="fa fa-fw fa-sign-out fa-lg"></i>Logout</a>
                  </li>
                </ul>
              </div>
          </div>
        </nav>


  <div class="row">
    <div class="col-sm-4">
      <h2>About Me</h2>
      <h5>Photo of me:</h5>
      <img class="d-block img-fluid" src="manager.png" alt="First slide">
      <p>Hello..Customer welcome to your home page...</p>
      
      <ul class="nav nav-pills flex-column">
        <li class="nav-item">
          <a class="nav-link active bg-success">Online Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="AccountSummary.jsp"><i class="fa fa-fw fa-list fa-lg" aria-hidden="true"></i><b>Account Summary</b></a>
        </li>
        <li class="nav-item">
         <a class="nav-link" href="AddBeneficiary.jsp"><i class="fa fa-fw fa-user-plus fa-lg" aria-hidden="true"></i><b>Add Beneficiary</b></a>         
        </li>
        <li class="nav-item">
         <a class="nav-link active bg-info" href="TransactionHomePage.jsp"><i class="fa fa-fw fa-repeat fa-lg" aria-hidden="true"></i><b>Quick Transfer</b></a>         
        </li>
        <li class="nav-item">
         <a class="nav-link" href="FundsTransfer.jsp"><i class="fa fa-fw fa-exchange fa-lg" aria-hidden="true"></i><b>Funds Transfer</b></a>         
        </li>
        <li class="nav-item">
          <a class="nav-link" href="TransactionHistory.jsp"><i class="fa fa-fw fa-history fa-lg" aria-hidden="true"></i><b>Transaction History</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="RequestForAnother.jsp"><i class="fa fa-fw fa-group fa-lg" aria-hidden="true"></i><b>Request for another Account</b></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="CustomerProfile.jsp"><i class="fa fa-user-circle-o fa-lg" aria-hidden="true"></i><b>Profile</b></b></a>
        </li>
      </ul>
      
      <hr class="d-sm-none">
      
    </div>
    <div class="col-sm-8">
    
    
            <h2>Hello..<%= customer.getFirstName() + " " + customer.getLastName()%></h2></br>
             <h3>Account Details :</h3></br>
                 <div class="container">  
        <table class="table" cellspacing="5">
    <tbody>
      <tr>
    <th>Account Number :</th>
    <th>Account Type :</th>
    <th>Balance :</th>
  </tr>
  <% for(Accounts account : accounts)  { 
    if (account.getStatus().equalsIgnoreCase("Approved")) {   %>
  <tr>
    <td><%=account.getAccountNumber() %></td>
    <td><%=account.getAccountType() %></td>
    <td><%=account.getBalance() %></td>
  </tr>
  <% } } %>
        </tbody>
        </table>
        </div>
               
               <div class="row">
               <table class="table" cellspacing = "1" >
               <tr><td>
                 <form action="TransactionServlet" method="post" class="form-horizontal"  oninput='bAccNo1.setCustomValidity(bAccNo1.value != bAccNo.value ? "Account numbers do not match." : "")'class="form-horizontal" role="form">
                   </br><span style="width:20px"></span> <label for="Account Type" class="col-sm-9 control-label">Select Account Number: </label>
                    <div class="col-sm-4">
                        </td><td></br><select class="dropdown text-secondary" name="accountNumber" required style="width:200px;height:30px">
                        <option>Select Account Number:</option>
                        <c:forEach var="accounts" items="${accountsList}">
                              <option value="${accounts.accountNumber}"><c:out value="${accounts.accountNumber}" /></option>
                        </c:forEach>
                        </select>
                    </div>         
                    </td>
                    </tr>
                    </table>    
                </div>
                </br>
               
               <h3>Beneficiary Details :</h3>
             <div class="container">
                <div class="row">
                    <label for="Beneficiary Name" class="col-sm-3 control-label">Beneficiary Name :</label>
                    <div class="col-sm-5">
                        <input type="text" name="bAccName" id="Beneficiary Name" placeholder="Beneficiary Name"required class="form-control" autofocus>
                    </div>
                </div>
                </br>
                <div class="row">
                    <label for="Beneficiary AccNo" class="col-sm-3 control-label">Beneficiary Account Number :</label>
                    <div class="col-sm-5">
                        <input type="text" name="bAccNo" id="Beneficiary AccNo" placeholder="Beneficiary Account Number"required class="form-control" autofocus>
                    </div>
                </div>
                </br>
                <div class="row">
                    <label for="Beneficiary AccNo" class="col-sm-3 control-label">Confirm Account Number :</label>
                    <div class="col-sm-5">
                        <input type="text" name="bAccNo1" id="Confrim Beneficiary AccNo" placeholder="Confirm Account Number"required class="form-control" autofocus>
                    </div>
                </div>
                </br>
                <div class="row">
                    <label for="Amount" class="col-sm-3 control-label">Amount :</label>
                    <div class="col-sm-5">
                        <input type="text" name="amount" id="Amount" placeholder="Amount"required class="form-control" autofocus>
                    </div>
                </div>
                </br>
                </br>
                <input type="checkbox" name="Terms&conditions" value="terms"required> I agree the terms and conditions <br>
                    </br>
                <form action="TransactionServlet" method="post">
                    <input type="submit" name="submit" class="btn btn-success" value="submit"></br>
                </form>
                </br>
                </form>
                </div>
        
                
    </div>
  </div>
</div>

<div class="jumbotron text-center" style="margin-bottom:0">
  <footer class="page-footer font-small blue pt-0">
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
                 I agree to abide by the
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
</body>
</html>

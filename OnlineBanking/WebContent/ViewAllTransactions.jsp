<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ts.dao.TransactionsDAO,com.ts.dto.Transactions,java.util.ArrayList,java.util.List"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Samriddhi view all transactions Page</title>
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
<%TransactionsDAO transactionsDAO = new TransactionsDAO();
List<Transactions> transactions = transactionsDAO.getAllTransactions();
session.setAttribute("transactions", transactions);%>
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
                    <a class="nav-link text-uppercase font-weight-bold text-white" href="#story"><i class="fa fa-fw fa-sign-out fa-lg"></i>Logout</a>
                  </li>
                </ul>
              </div>
          </div>
        </nav>
        
        <div class="container">
     <div class="col-sm-4">
   </br>
   </br>
   </br>
   </br>
   </br>
   </br>
   <td height="100"><img class="img-thumbnail" src="transaction.gif" alt="First slide"></td>
   </br>
   <div class="container">
   <h4><span style="width:100px"></span>All Transactions<h4>
   </div>
   </br>
   </br>
   </br>
   </br>
   </br>
   </br>
   </br>
    </div>
        
         <div class="col-sm-8">
         
         </br>
         <h1 align="center">DISPLAY ALL TRANSACTIONS</h1>
         </br>
         	<table class="table table-striped">
		<tr>
			<th>TRANSACTION ID</th>
			<th>DESCRIPTION</th>
			<th>BENEFICIARY ACCOUNT NUMBER</th>
			<th>AMOUNT</th>
			<th>CURRENT BALANCE</th>
		</tr>
		<c:forEach var="trans" items="${transactions}">
			<tr>
				<td>${trans.transactionId}</td>
				<td>${trans.mode}</td>
				<td>${trans.beneficiaryAccNo}</td>
				<td>${trans.amount}</td>
				<td>${trans.currentBalance}</td>
				</tr>
		</c:forEach>
	</table>
         
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
        
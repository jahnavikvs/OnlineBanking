<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.List,java.util.ArrayList,com.ts.dao.CustomerDAO,com.ts.dto.Customer,com.ts.dao.AccountsDAO,com.ts.dto.Accounts"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Samridhi view all Requests Page</title>
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
<style>"WebContent/Notification.html"
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
<%AccountsDAO accountsDAO = new AccountsDAO();
List<Accounts> accounts = accountsDAO.getAllAccounts();
List<Accounts> pendingAccounts = new ArrayList<Accounts>();
for(Accounts account:accounts) {
	if(account.getStatus().equalsIgnoreCase("Pending")) {
		pendingAccounts.add(account);
	}
}
session.setAttribute("pendingAccounts", pendingAccounts);
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
   					 <div class="navbar-collapse collapse">
                                     
                  <li class="nav-item active">
                    <a class="nav-link  text-uppercase font-weight-bold text-white" href="contact.html"><i class="fa fa-fw fa-lock"></i>Logout</a>
                  </li>
    </div>
                </ul>
              </div>
          </div>
        </nav>
        <div class="row">
     <div class="col-sm-4">
   </br>
   </br>
   </br>
   </br>
   </br>
   </br><h3 align="center">Notifications<h3>
   <td height="100"><img class="img-thumbnail" src="notification1.gif" alt="First slide"></td>
   </br>
   
   </br>
   </br>
   </br>
   </br>
   </br>
   </br>
   </br>
    </div>
       <div class="col-sm-8">
       <h2>Request For An Account</h2> </br>
         <div class="container">
          
           <table class="table">         
      <tr>
        <th>Customer Id</th>
        <th>Request</th>
      </tr>
    <tbody>
    
    <form>
    <c:forEach var="pendingAccount" items="${pendingAccounts}"> 
      <tr>
        <td>${pendingAccount.customer.customerId}</td>
        <td>
        <div class="form-check">
       
  		<input type="button" class="btn btn-success btn-sm" name="pending" value="View Request" data-toggle="modal" data-target="#myModal">
  	
  </c:forEach>
  </form>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
      <style ="height:10%">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        
        </div>
        </style>
        <div class="modal-body">
              <%=request.getParameter("pendingAcc") %> 
         <div class="modal-footer">
         <div class="row">
         <button type="button" class="btn btn-success" data-dismiss="modal">Approve</button><span style="display:inline-block; width: 10px;"></span>
          <button type="button" class="btn btn-danger" data-dismiss="modal">Reject</button><span style="display:inline-block; width: 10;"></span>
          </div>
          </div>
          </div>
          </div>
        </div>
        </div>
        </div>
        </td>
      </tr>
    </tbody>
  </table>
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
        
        
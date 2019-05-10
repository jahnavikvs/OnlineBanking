package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.AccountsDAO;
import com.ts.dto.Accounts;

@WebServlet("/TransactionServlet")
public class TransactionServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String bAccName = request.getParameter("bAccName");
		long bAccNo = Long.parseLong(request.getParameter("bAccNo"));
		long accNo = Long.parseLong(request.getParameter("accountNumber"));
		double amount = Double.parseDouble(request.getParameter("amount"));
		
		System.out.println(bAccName + " " + bAccNo + " " + amount + accNo);

		
		AccountsDAO accDao1 = new AccountsDAO();
        Accounts account1 = accDao1.getAccount(bAccNo);	
        AccountsDAO accDao2 = new AccountsDAO();
        Accounts account2 = accDao2.getAccount(accNo);	
        
		System.out.println(account1);
		System.out.println(account2);
		if (account1 != null) {
			if ( account1.getStatus().equalsIgnoreCase("Approved") && ((account2.getAccountType().equalsIgnoreCase("savings") && account2.getBalance() - amount >= 500) || (account2.getAccountType().equalsIgnoreCase("current") && account2.getBalance() - amount >= 1000)) ) {
				HttpSession session = request.getSession(true);
				session.setAttribute("bAccNo", bAccNo);
				session.setAttribute("bAccName", bAccName);
				session.setAttribute("amount", amount);
				session.setAttribute("accNo", accNo);
				System.out.println("hii");
				RequestDispatcher rd = request.getRequestDispatcher("ValidTransactionServlet");
				rd.include(request, response);
			}
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}


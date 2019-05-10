package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ts.dao.AccountsDAO;
import com.ts.dao.CustomerDAO;
import com.ts.dto.Accounts;
import com.ts.dto.Customer;

@WebServlet("/RegisterCustomerServlet")
public class RegisterCustomerServlet extends HttpServlet {

    public RegisterCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("hello!");
		response.setContentType("text/html");
		DateFormat df = new SimpleDateFormat("dd-MM-yyyy");
		java.util.Date dateobj = new java.util.Date();
		String date2 = df.format(dateobj);
		java.util.Date date3 = null;
		try {
			date3 = df.parse(date2);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		java.sql.Date  accountOpenDate = new java.sql.Date(date3.getTime());
		HttpSession session = request.getSession(true);
		String accType = (String)session.getAttribute("accType");
		int cId = (Integer)session.getAttribute("cId");
		CustomerDAO customerDao = new CustomerDAO();
		Customer customer = customerDao.getCustomer(cId);
		Accounts accounts = new Accounts(accType, 1000, accountOpenDate, "Pending", customer);
		AccountsDAO accountsDao = new AccountsDAO();
		int x1 = accountsDao.register(accounts);
		RequestDispatcher rd = request.getRequestDispatcher("CustomerHomePage.jsp");
		rd.include(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.dao.EmployeeDAO;
import com.ts.dto.Employee;
import java.sql.Date;
@WebServlet("/AddEmployeeServlet")
public class AddEmployeeServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		long ePhno = Long.parseLong(request.getParameter("ePhno"));
		String eEmail = request.getParameter("eEmail");
		double salary = Double.parseDouble(request.getParameter("salary"));
		String job = request.getParameter("job");
		String user = request.getParameter("userName");
		String pass = request.getParameter("password");
		String startDateStr = request. getParameter("dateOfJoin");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date dateJoin = null;
		try {
			dateJoin = sdf. parse(startDateStr);
			System.out.println(dateJoin);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		java.sql.Date dateOfJoin  = new java.sql.Date(dateJoin.getTime());
		Employee employee = new Employee(fName,lName,salary,job,ePhno, user,pass,dateOfJoin, eEmail);		
		EmployeeDAO employeeDao = new EmployeeDAO();
		int x = employeeDao.register(employee);
		RequestDispatcher rd = request.getRequestDispatcher("AddEmployee.jsp");
		rd.include(request, response);
	  out.println("<h3><CENTER>Registration Success .."+x+" Rows inserted...</CENTER></H3>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}


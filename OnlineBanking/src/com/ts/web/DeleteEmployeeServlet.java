package com.ts.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ts.dao.EmployeeDAO;
import com.ts.db.HibernateTemplate;
import com.ts.dto.Employee;
//import java.io.Serializable;

@WebServlet("/DeleteEmployeeServlet")
public class DeleteEmployeeServlet extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			response.setContentType("text/html");
			PrintWriter out = response.getWriter();
			out.print("<html>");
			int empId = Integer.parseInt(request.getParameter("empId"));
			int x = HibernateTemplate.deleteObject(Employee.class, empId);
			if(x > 0) {
				RequestDispatcher rd = request.getRequestDispatcher(
						"DisplayAllEmp");
				rd.include(request, response);
				out.println("<h3><center>Record Deleted Successfully..</center></h3>");
			}
			else {
				RequestDispatcher rd = request.getRequestDispatcher(
						"HrHomePage.jsp");
				rd.include(request, response);
				out.println("<h3><center>Record not found</center></h3>");
			}

			out.println("</body>");
			out.println("</html>");
	
		}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

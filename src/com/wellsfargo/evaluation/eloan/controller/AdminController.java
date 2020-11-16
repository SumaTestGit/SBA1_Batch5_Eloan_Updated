package com.wellsfargo.evaluation.eloan.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wellsfargo.evaluation.eloan.dao.ConnectionDao;

@WebServlet("/admin")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private ConnectionDao connDao;

	public void setConnDao(ConnectionDao connDao) {
		this.connDao = connDao;
	}

	public void init(ServletConfig config) {
		String jdbcURL = config.getServletContext().getInitParameter("jdbcUrl");
		String jdbcUsername = config.getServletContext().getInitParameter("jdbcUsername");
		String jdbcPassword = config.getServletContext().getInitParameter("jdbcPassword");
		System.out.println(jdbcURL + jdbcUsername + jdbcPassword);
		this.connDao = new ConnectionDao(jdbcURL, jdbcUsername, jdbcPassword);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println(action);
		String viewName = "";
		try {
			switch (action) {
			case "listall":
				viewName = listall(request, response);
				break;
			case "process":
				viewName = process(request, response);
				break;
			case "callemi":
				viewName = calemi(request, response);
				break;
			case "updatestatus":
				viewName = updatestatus(request, response);
				break;
			case "logout":
				viewName = adminLogout(request, response);
				break;
			default:
				viewName = "notfound.jsp";
				break;
			}
		} catch (Exception ex) {
			throw new ServletException(ex.getMessage());
		}
		
		RequestDispatcher dispatch = request.getRequestDispatcher(viewName);
		dispatch.forward(request, response);
	}

	private String updatestatus(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		// TODO Auto-generated method stub
		/* write the code for updatestatus of loan and return to admin home page */

		return null;
	}

	private String calemi(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		
		/* write the code to calculate emi for given applno and display the details */
				
		Double sanctionedLoanAmount =
		Double.valueOf(request.getParameter("Sanctioned loan amount"));
		  
		int interestRate = Integer.parseInt(request.getParameter("interest rate"));
		  
		int termOfLoan = Integer.parseInt(request.getParameter("term of loan"));
		  
		Double termPaymentAmount = (sanctionedLoanAmount) * (1 + interestRate/100) * (termOfLoan);
		  
		Double emi = (termPaymentAmount) / (termOfLoan);	
		
		request.setAttribute("emi", emi);

		return null;
	}

	private String process(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		// TODO Auto-generated method stub
		/* return to process page */
		return "process.jsp";
	}

	private String adminLogout(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		/* write code to return index page */
		return "index.jsp";
	}

	private String listall(HttpServletRequest request, HttpServletResponse response) throws SQLException {
		/* write the code to display all the loans */
		
		
		/// List<LoanInfo> list = dao.getLoans();
// restye.setAttribute("loanList", list);
		
		return "listall.jsp";
	}

}
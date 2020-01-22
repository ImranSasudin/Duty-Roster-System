package dutyroster.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dutyroster.dao.AccountDAO;
import dutyroster.dao.FreeTimeDAO;
import dutyroster.model.MemberBean;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("/MemberController")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		MemberBean member = new MemberBean();
		
		if(action.equalsIgnoreCase("viewAccount")) {
			HttpSession session = request.getSession(true);
			String studentId = (String) session.getAttribute("currentSessionUser");
			member = AccountDAO.getUserByID(studentId);
			request.setAttribute("student", member);
			RequestDispatcher view = request.getRequestDispatcher("/viewAccount.jsp");
			view.forward(request, response);
		}
		else if(action.equalsIgnoreCase("updateUser")) {
			HttpSession session = request.getSession(true);
			String studentId = (String) session.getAttribute("currentSessionUser");
			member = AccountDAO.getUserByID(studentId);
			request.setAttribute("student", member);
			RequestDispatcher view = request.getRequestDispatcher("/updateUser.jsp");
			view.forward(request, response);
		}
		else if(action.equalsIgnoreCase("logout")) {
			HttpSession session = request.getSession(true);
            session.setAttribute("currentSessionUser", null);

			session.invalidate();
			
			response.sendRedirect("login.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberBean member = new MemberBean();
		
		
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("Register")) {
			String studentId = request.getParameter("id");
			String studentName = request.getParameter("name");
			String studentAddress = request.getParameter("address");
			String studentPhone = request.getParameter("phone");
			String studentPosition = request.getParameter("position");
			String studentCgpa = request.getParameter("cgpa");
			String studentPassword = request.getParameter("password");
			
			member.setStudentId(studentId);
			member.setStudentName(studentName);
			member.setStudentAddress(studentAddress);
			member.setStudentPhone(studentPhone);
			member.setStudentPosition(studentPosition);
			member.setStudentCgpa(studentCgpa);
			member.setStudentPassword(studentPassword);
			
			member = AccountDAO.getUser(studentId);
			
			if(member.isValid()) {
				response.setContentType("text/html");
			      PrintWriter pw = response.getWriter();
			      pw.println("<script>");
			      pw.println("alert('Account already exist');");
			      pw.println("window.location.href='register.jsp';");
			      pw.println("</script>");
				
			}
			else {
				AccountDAO.add(member);
				
				response.sendRedirect("login.jsp");
				
			}
			
			
		}
		else if(action.equalsIgnoreCase("Login")) {
			String studentId = request.getParameter("id");
			String studentPassword = request.getParameter("password");
			
			member.setStudentId(studentId);
			member.setStudentPassword(studentPassword);
			
			try {
				member = AccountDAO.login(member);
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if(member.isValid()) {
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser", member.getStudentId());
				
				response.sendRedirect("index.jsp");
			}
			else {
				response.setContentType("text/html");
			      PrintWriter pw = response.getWriter();
			      pw.println("<script>");
			      pw.println("alert('Invalid ID or Password');");
			      pw.println("window.location.href='login.jsp';");
			      pw.println("</script>");
			}
			
		}
		else if(action.equalsIgnoreCase("update")) {
			String studentId = request.getParameter("id");
			String studentName = request.getParameter("name");
			String studentAddress = request.getParameter("address");
			String studentPhone = request.getParameter("phone");
			String studentPosition = request.getParameter("position");
			String studentCgpa = request.getParameter("cgpa");
			String studentPassword = request.getParameter("password");
			
			member.setStudentId(studentId);
			member.setStudentName(studentName);
			member.setStudentAddress(studentAddress);
			member.setStudentPhone(studentPhone);
			member.setStudentPosition(studentPosition);
			member.setStudentCgpa(studentCgpa);
			member.setStudentPassword(studentPassword);
			
			try {
				AccountDAO.updateAccount(member);
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			member = AccountDAO.getUserByID(studentId);
			request.setAttribute("student", member);
			RequestDispatcher view = request.getRequestDispatcher("/viewAccount.jsp");
			view.forward(request, response);
			
		}
	}

}

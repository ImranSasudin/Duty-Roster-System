package dutyroster.controller;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dutyroster.dao.AccountDAO;
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
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberBean member = new MemberBean();
		HttpSession session = request.getSession(true);
		
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
			
			AccountDAO.add(member);
			
			response.sendRedirect("login.jsp");
			
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
				session.setAttribute("currentSessionUser", member.getStudentId());
				
				response.sendRedirect("index.jsp");
			}
			
		}
	}

}

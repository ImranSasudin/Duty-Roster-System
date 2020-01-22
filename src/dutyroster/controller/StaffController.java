package dutyroster.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.NoSuchAlgorithmException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dutyroster.dao.AccountDAO;
import dutyroster.dao.StaffDAO;
import dutyroster.model.StaffBean;

/**
 * Servlet implementation class StaffController
 */
@WebServlet("/StaffController")
public class StaffController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StaffController() {
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
		StaffBean staff = new StaffBean();
		
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("login")) {
			String staffId = request.getParameter("id");
			String staffPassword = request.getParameter("password");
			
			staff.setStaffId(staffId);
			staff.setStaffPassword(staffPassword);
			
			try {
				staff = StaffDAO.login(staff);
			} catch (NoSuchAlgorithmException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			if(staff.isValid()) {
				HttpSession session = request.getSession(true);
				session.setAttribute("currentSessionUser", staff.getStaffId());
				
				response.sendRedirect("adminHomepage.jsp");
			}
			else {
				response.setContentType("text/html");
			      PrintWriter pw = response.getWriter();
			      pw.println("<script>");
			      pw.println("alert('Invalid ID or Password');");
			      pw.println("window.location.href='adminLogin.jsp';");
			      pw.println("</script>");
			}
		}
	}

}

package dutyroster.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dutyroster.dao.FreeTimeDAO;
import dutyroster.model.FreeTimeBean;

/**
 * Servlet implementation class FreeTimeController
 */
@WebServlet("/FreeTimeController")
public class FreeTimeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FreeTimeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		FreeTimeBean free = new FreeTimeBean();
		
		if(action.equalsIgnoreCase("freeTime")) {
			
			HttpSession session = request.getSession(true);
			String studentId = (String) session.getAttribute("currentSessionUser");
			free = FreeTimeDAO.getUser(studentId);
			if(free.isValid()) {
				request.setAttribute("frees", FreeTimeDAO.getFreeTime(studentId));
				RequestDispatcher view = request.getRequestDispatcher("/viewfreetime.jsp");
				view.forward(request, response);
			}
			else {
				response.sendRedirect("freetime.jsp");
			}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		FreeTimeBean free = new FreeTimeBean();
		
		if(action.equalsIgnoreCase("freeTime")) {
			String[] dayId = request.getParameterValues("day");
			
			HttpSession session = request.getSession(true);
			String studentId = (String) session.getAttribute("currentSessionUser");
			free.setStudentId(studentId);
			
			if(dayId.length < 3) {
				request.setAttribute("min", "true");
				RequestDispatcher view = request.getRequestDispatcher("/freetime.jsp");
				view.forward(request, response);
			}
			else {
			
				for(int i = 0; i<dayId.length; i++) {
					free.setDayId(dayId[i]);
					FreeTimeDAO.add(free);
				}
				
				request.setAttribute("frees", FreeTimeDAO.getFreeTime(studentId));
				RequestDispatcher view = request.getRequestDispatcher("/viewfreetime.jsp");
				view.forward(request, response);
			}
		}
		else if(action.equalsIgnoreCase("UpdateFreeTime")) {
			String[] dayId = request.getParameterValues("day");
			
			HttpSession session = request.getSession(true);
			String studentId = (String) session.getAttribute("currentSessionUser");
			free.setStudentId(studentId);
			
			if(dayId.length < 3) {
				request.setAttribute("min", "true");
				RequestDispatcher view = request.getRequestDispatcher("/freetime.jsp");
				view.forward(request, response);
			}
			else {
				FreeTimeDAO.deleteFreeTime(studentId);
				for(int i = 0; i<dayId.length; i++) {
					free.setDayId(dayId[i]);
					FreeTimeDAO.add(free);
				}
				
				request.setAttribute("frees", FreeTimeDAO.getFreeTime(studentId));
				RequestDispatcher view = request.getRequestDispatcher("/viewfreetime.jsp");
				view.forward(request, response);
			}
		}
		
	}

}

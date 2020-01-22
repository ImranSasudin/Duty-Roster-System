<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="dutyRoster.model.userBean" %>
<%
	response.setDateHeader ("Expires", 4);
	System.out.println(session.getAttribute("currentUserID"));
	String name = (String)session.getAttribute("currentSessionUser");
	String id = (String)session.getAttribute("currentUserID");
	if(session.getAttribute("currentUserID")==null){
	    response.sendRedirect("/DutyRosterSystem/login1.jsp");
	}
	else{
		   id = (String)session.getAttribute("currentUserID");
		  System.out.println(name);

%>
	<script>
    	function confirmDelete() {
    		var x = confirm("Delete user?");
    		if(x) return true;
    		else return false;
    	}
    </script>
    
<body>
	<center>
      
		<a href="/DutyRosterSystem/userController?action=viewUser&id=<c:out value="<%=id%>"/>">
                	<button type="submit" class="btn btn-info float-right">View
                    </button></a> </center><br><br><br><br><br><br><br><br><br>


 <!-- /#page-wrapper -->

<!-- /#wrapper -->
</body>
<%} %>
</html>
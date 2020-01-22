<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
	response.setDateHeader ("Expires", 4);
	System.out.println(session.getAttribute("currentUserID"));
	String name = (String)session.getAttribute("currentSessionUser");
	String id = (String)session.getAttribute("currentUserID");


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
      
		<a href="/DutyRosterSystem/userController?action=viewListUser">
                	<button type="submit" class="btn btn-info float-right">List Student
                    </button></a> </center><br><br><br><br><br><br><br><br><br>


 <!-- /#page-wrapper -->

<!-- /#wrapper -->
</body>

</html>
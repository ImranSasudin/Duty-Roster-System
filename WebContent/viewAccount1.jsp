

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
		  System.out.println(id);

%>
	<script>
    	function confirmDelete() {
    		var x = confirm("Delete user?");
    		if(x) return true;
    		else return false;
    	}
    </script>
    
<body>
				<form action="registerServlet" method="post" >
                 <table class="table table-bordered table-hover table-striped" align="center" style="width:450px;">
                
                
               								<br><br>
											<tr><td style="width:150px;">User Id</td>
                							<td>: <c:out value="${user.id}"/>
                  							</td>
                 							
                 							</tr>
                                  		
                                        	<tr><td>Name
                              						</td><td>
                              						
                              							: <c:out value="${user.name}"/>
                              						</td>
                              						</tr>
                              						<tr><td>Address</td>
                                        	<td>		: <c:out value="${user.address}"/>
                              				     </td>
                              				     <tr>
                              				     <tr><td>Phone</td>
                                        	<td>		: <c:out value="${user.phone}"/>
                              				     </td><tr>
                              				     <tr><td>Cgpa</td>
                                        	<td>		: <c:out value="${user.cgpa}"/>
                              				     </td>
                              				     
                          					                                  		
                                        	<tr>
                                        	<td>Position</td>
                                        	<td>		:<c:out value="${user.position}"/>
                              				     </td>
                              				     </tr>
                              				     </table>  </form>                          	
                              	
                          		</div><center>
                          		<a class="btn btn-info btn-xs" href="userController?action=Update&id=<c:out value="${user.id}"/>"><i class="fa fa-pencil"></i>Update</a>
                          		
									
								</center><br><br><br><br><br><br><br><br><br>
 <!-- /.container-fluid -->
<a href="freetimeController?action=ListFreetime&id=<c:out value="${user.id}"/>">Free Time</a>
 </div>
 <!-- /#page-wrapper -->

<!-- /#wrapper -->
</body>
<%} %>
</html>
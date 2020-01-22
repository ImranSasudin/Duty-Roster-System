

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page import="dutyRoster.model.userBean" %>
<%userBean currentUser = (userBean) session.getAttribute("currentSessionUser");%>

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
                							<td>: <c:out value="<%=currentUser.getId() %>"/>
                  							</td>
                 							
                 							</tr>
                                  		
                                        	<tr><td>Name
                              						</td><td>
                              						
                              							: <c:out value="<%=currentUser.getName() %>"/>
                              						</td>
                              						</tr>
                              						<tr><td>Address</td>
                                        	<td>		: <c:out value="<%=currentUser.getAddress() %>"/>
                              				     </td>
                              				     <tr>
                              				     <tr><td>Phone</td>
                                        	<td>		: <c:out value="<%=currentUser.getPhone() %>"/>
                              				     </td><tr>
                              				     <tr><td>Cgpa</td>
                                        	<td>		: <c:out value="<%=currentUser.getCgpa() %>"/>
                              				     </td>
                              				     
                          					                                  		
                                        	<tr>
                                        	<td>Position</td>
                                        	<td>		:<c:out value="<%=currentUser.getPosition() %>"/>
                              				     </td>
                              				     </tr>
                              				     </table>  </form>                          	
                              	
                          		</div><center>
                          		<a class="btn btn-info btn-xs" href="registerServlet?action=Update&id=<c:out value="<%=currentUser.getId() %>"/>"><i class="fa fa-pencil"></i>Update</a>
                          		
									<a class="btn btn-theme04 btn-xs" href="registerServlet?action=Delete&id=<c:out value="<%=currentUser.getId() %>"/>" onclick="return confirmDelete()"><i class="fa fa-trash-o"></i> Delete</a>
								</center><br><br><br><br><br><br><br><br><br>
 <!-- /.container-fluid -->
<a href="freetimeServlet?action=ListFreetime&id=<c:out value="<%=currentUser.getId() %>"/>">Free Time</a>
 </div>
 <!-- /#page-wrapper -->

<!-- /#wrapper -->
</body>
</html>
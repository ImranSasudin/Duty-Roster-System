package dutyroster.dao;

import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import dutyroster.connection.ConnectionManager;
import dutyroster.model.MemberBean;
import dutyroster.model.StaffBean;

public class StaffDAO {
	static Connection currentCon = null;
	static ResultSet rs = null;
	static PreparedStatement ps = null;
	static Statement stat = null;
	static String staffId, staffName, staffPassword;
	
	public static StaffBean login(StaffBean bean) throws NoSuchAlgorithmException {
		staffId = bean.getStaffId();
		staffPassword = bean.getStaffPassword();
        
        String searchQuery = "select * from staff where staffid = '" + staffId + "' AND staffpassword = '" + staffPassword + "'";
        
        System.out.println("Query: " + searchQuery);
        
        try {
            currentCon = ConnectionManager.getConnection();
            stat = currentCon.createStatement();
            rs = stat.executeQuery(searchQuery);
            boolean more = rs.next();

            // if user exists set the isValid variable to true
            if (more) {

                bean.setStaffId(rs.getString("staffid"));
                bean.setValid(true);
           	}
           
            // if user does not exist set the isValid variable to false
            else if (!more) {
            	System.out.println("Sorry, you are not a registered student! Please sign up first");
            	bean.setValid(false);
            }
           
        }
        catch (Exception ex) {
            System.out.println("Log In failed: An Exception has occurred! " + ex);
        }

        finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception e) {
                }
                rs = null;
            }

            if (stat != null) {
                try {
                    stat.close();
                } catch (Exception e) {
                }
                stat = null;
            }

            if (currentCon != null) {
                try {
                    currentCon.close();
                } catch (Exception e) {
                }

                currentCon = null;
            }
        }

        return bean;
    }

}

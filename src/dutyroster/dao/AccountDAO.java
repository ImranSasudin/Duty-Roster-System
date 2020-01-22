package dutyroster.dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import dutyroster.connection.ConnectionManager;
import dutyroster.model.MemberBean;


public class AccountDAO {
	static Connection currentCon = null;
	static ResultSet rs = null;
	static PreparedStatement ps = null;
	static Statement stat = null;
	static String studentId,studentName,studentAddress,studentPhone,studentPosition,studentCgpa,studentPassword;
	
	public static void add(MemberBean bean) {
		studentId = bean.getStudentId();
		studentName = bean.getStudentName();
		studentAddress = bean.getStudentAddress();
		studentPhone = bean.getStudentPhone();
		studentPosition = bean.getStudentPosition();
		studentCgpa = bean.getStudentCgpa();
		studentPassword = bean.getStudentPassword();
		
		try {
			currentCon = ConnectionManager.getConnection();
			ps=currentCon.prepareStatement("insert into member (studentid, studentname, studentAddress,studentPhone,studentPosition,studentCgpa,studentPassword) values(?,?,?,?,?,?,?)");
			ps.setString(1,studentId);
			ps.setString(2,studentName);
			ps.setString(3,studentAddress);
			ps.setString(4,studentPhone);
			ps.setString(5,studentPosition);
			ps.setString(6,studentCgpa);
			ps.setString(7,studentPassword);
			ps.executeUpdate();
			
			System.out.println("Success Register");
		}
		
		catch (Exception ex) {
			System.out.println("failed: An Exception has occured!" + ex);
		}
		
		finally {
			if (ps != null){
				try {
					ps.close();
				} catch (Exception e) {
					ps = null;
				}
			if (currentCon != null) {
				try {
					currentCon.close();
				} catch (Exception e_) {
					currentCon = null;
				}
			}
			}
		}
	}
	
	public static MemberBean login(MemberBean bean) throws NoSuchAlgorithmException {
		studentId = bean.getStudentId();
		studentPassword = bean.getStudentPassword();
        
        String searchQuery = "select * from member where studentid = '" + studentId + "' AND studentpassword = '" + studentPassword + "'";
        
        System.out.println("Query: " + searchQuery);
        
        try {
            currentCon = ConnectionManager.getConnection();
            stat = currentCon.createStatement();
            rs = stat.executeQuery(searchQuery);
            boolean more = rs.next();

            // if user exists set the isValid variable to true
            if (more) {

                bean.setStudentId(rs.getString("studentid"));
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

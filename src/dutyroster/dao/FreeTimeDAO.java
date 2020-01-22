package dutyroster.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dutyroster.connection.ConnectionManager;
import dutyroster.model.FreeTimeBean;
import dutyroster.model.MemberBean;

public class FreeTimeDAO {
	static Connection currentCon = null;
	static ResultSet rs = null;
	static PreparedStatement ps = null;
	static Statement stat = null;
	static String dayId;
	static String dayName,studentId, studentName;
	static boolean valid;
	
	public static void add(FreeTimeBean bean) {
		studentId = bean.getStudentId();
		dayId = bean.getDayId();

		
		try {
			currentCon = ConnectionManager.getConnection();
			ps=currentCon.prepareStatement("insert into freetime (studentid, dayid) values(?,?)");
			ps.setString(1,studentId);
			ps.setString(2,dayId);
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
	
	public static List<FreeTimeBean> getFreeTime(String studentId) {
        List<FreeTimeBean> frees = new ArrayList<FreeTimeBean>();
        
        try {
        	currentCon = ConnectionManager.getConnection();
        	stat = currentCon.createStatement();
            ResultSet rs = stat.executeQuery("select * from member m join freetime f on(m.studentid = f.studentid) join day d on(d.dayid = f.dayid) where m.studentid = '"+ studentId +"'");
            
            while (rs.next()) {
            	FreeTimeBean free = new FreeTimeBean();
                free.setStudentName(rs.getString("studentname"));
                free.setDayName(rs.getString("dayname"));

                frees.add(free);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return frees;
    }
	
	public static List<FreeTimeBean> getDutyRoster() {
        List<FreeTimeBean> frees = new ArrayList<FreeTimeBean>();
        
        try {
        	currentCon = ConnectionManager.getConnection();
        	stat = currentCon.createStatement();
            ResultSet rs = stat.executeQuery("select * from member m join freetime f on(m.studentid = f.studentid) join day d on(d.dayid = f.dayid) order by dayname");
            
            while (rs.next()) {
            	FreeTimeBean free = new FreeTimeBean();
                free.setStudentName(rs.getString("studentname"));
                free.setDayName(rs.getString("dayname"));
                frees.add(free);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return frees;
    }
	
	public static void deleteFreeTime(String studentId) {
        try {
        	currentCon = ConnectionManager.getConnection();
        	ps=currentCon.prepareStatement("delete from freetime where studentid=?");
            ps.setString(1, studentId);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
		
    }
	public static FreeTimeBean getUser(String studentId)  {
    	
		FreeTimeBean bean = new FreeTimeBean();
        String searchQuery = "select * from freetime where studentId='" + studentId + "'";

        try {
            currentCon = ConnectionManager.getConnection();
            stat = currentCon.createStatement();
            rs = stat.executeQuery(searchQuery);
            boolean more = rs.next();

            // if user exists set the isValid variable to true
            if (more) {
           
                bean.setValid(true);
           	}
           
            else if (!more) {
            	System.out.println("Sorry");
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

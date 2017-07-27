package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import com.mysql.jdbc.Statement;

import VO.User;

public class ForgotPassword {

	
		// TODO Auto-generated constructor stub
		public void changePassword(User User){
			try
			{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/freelancingproject?useSSL=false", "root", "root");
				
				Statement st=(Statement) con.createStatement();
				st.executeUpdate("UPDATE company set password='"+User.getPass()+"' where email='"+User.getEmail()+"'");
				st.close();
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
			
		}
	
	
	

}

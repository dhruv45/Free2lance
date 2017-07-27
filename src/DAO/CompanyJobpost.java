package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;


import VO.CompanyJobpostInfo;
import VO.CompanyJobskillInfo;;

public class CompanyJobpost {

	
		public void jobpost(CompanyJobpostInfo cjpi ){
			try {
				System.out.println("hii");
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/freelancingproject?useSSL=false", "root", "root");


			String query = "insert into jobposting(userid, title, jobid, jobDesc, location, type)" + " values(?, ?, ?, ?, ?, ?)";
	   		 PreparedStatement prepstate = (PreparedStatement) conn.prepareStatement(query);
	   		 prepstate.setString(1, cjpi.getUserid());
	   		 prepstate.setString(2, cjpi.getJobTitle());
	   		 prepstate.setString(3, cjpi.getJobId());
	   		 prepstate.setString(4, cjpi.getJobDesc());
	   		 prepstate.setString(5, cjpi.getLocation());
	   		 prepstate.setString(6, cjpi.getType());
	   		prepstate.execute();

				//Statement st=conn.createStatement();
				//st.executeUpdate(" insert into job  (userid,  jobDesc, location,time) values ( '"+cjpi.getUserid()+"','"+cjpi.getJobDesc()+"','"+cjpi.getLocation()+"','"+cjpi.getTime()+"')");
				//st.close();
	   		System.out.println("hii there");
				conn.close(); 
				    }
	            
	            
	        catch (Exception err) {
		    System.out.println( err.getMessage( ) );
		    //return false;
		     }
			//return true;
		}
		
		public static boolean jobpostSkills(List<CompanyJobskillInfo> companyJobskillList){
			try {
				System.out.println("hii");
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/freelancingproject?useSSL=false", "root", "root");

				for(CompanyJobskillInfo obj:companyJobskillList)
				{

					String query = "insert into jobskills (jobid, skill)" + " values(?, ?)";
			   		 PreparedStatement prepstate = (PreparedStatement) conn.prepareStatement(query);
			   		 prepstate.setString(1, obj.getJobid());
			   		 prepstate.setString(2, obj.getSkill());
			   		prepstate.execute();
				}
				//Statement st=conn.createStatement();
				//st.executeUpdate(" insert into job  (userid,  jobDesc, location,time) values ( '"+cjpi.getUserid()+"','"+cjpi.getJobDesc()+"','"+cjpi.getLocation()+"','"+cjpi.getTime()+"')");
				//st.close();
	   		System.out.println("hii there");
				conn.close(); 
				    }
	            
	            
	        catch (Exception err) {
		    System.out.println( err.getMessage( ) );
		    return false;
		     }
			return true;
		}
	}


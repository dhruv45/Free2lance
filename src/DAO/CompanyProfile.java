package DAO;

import java.sql.Connection;
import java.sql.DriverManager;

import com.mysql.jdbc.PreparedStatement;

import VO.CompanyProfileInfo;

public class CompanyProfile {

	public CompanyProfile()
	{
		
	}
	
	public void insert(CompanyProfileInfo info)
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/freelancingproject?useSSL=false", "root", "root");
			
			String query ="insert into CompanyProfile(userid, companyDesc, website, founded)" + " values (?, ?, ?, ?)";
			PreparedStatement prepstate = (PreparedStatement) con.prepareStatement(query);
			prepstate.setString(1, info.getUserid());
			prepstate.setString(2, info.getCompanyDes());
			prepstate.setString(3, info.getWebsite());
			prepstate.setString(4, info.getFounded());
			
			prepstate.execute();
			
			//Statement stmt = (Statement) con.createStatement();
			//int rs = stmt.executeUpdate("INSERT INTO Registration(firstName, lastName, userid, email, password) VALUES(" + session.getAttribute("firstName") +", " + session.getAttribute("lastName") + ", "+ session.getAttribute("userid") + ", " + session.getAttribute("email") + ", " + session.getAttribute("password") + ");");
			con.close();
		} catch(Exception e)
		{
			e.printStackTrace();
		}
	}


}

package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.PreparedStatement;

public class CompanyLogin {

private VO.CompanyUser cuser;
private String website;
	
	public CompanyLogin(VO.CompanyUser ctype)
	{
		this.cuser = ctype;
	}
	
	public Boolean UserExists()
	{
boolean flag = false;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/freelancingproject?useSSL=false", "root", "root");
			PreparedStatement prepstate = (PreparedStatement) con.prepareStatement("select userid, password, email,companyName  from Company");
			ResultSet rs = prepstate.executeQuery();
			String id = cuser.getUserid();
			
			while(rs.next())
			{
				if(id.equals(rs.getString("userid")) && (cuser.getPassword().equals(rs.getString("password"))))
				{
					
					cuser.setCompanyName(rs.getString("companyName"));
					cuser.setEmail(rs.getString("email"));
					return flag = true;
				}
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return flag;
	}
	
	public VO.CompanyUser getCompanyUser()
	{
		setWebsite();
		return this.cuser;
	}
	
	public void setWebsite()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/freelancingproject?useSSL=false", "root", "root");
			PreparedStatement prepstate = (PreparedStatement) con.prepareStatement("select userid, website from CompanyProfile");
			ResultSet rs = prepstate.executeQuery();
			
			//System.out.println(rs.getString("website"));
			
			while(rs.next())
			{
				//System.out.println(rs.getString("userid"));
				if(cuser.getUserid().equals(rs.getString("userid")))
				{
					this.website = rs.getString("website");
					
					return;
				}
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public String getWebsite()
	{
		return website;
	}


}

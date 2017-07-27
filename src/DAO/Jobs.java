package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.mysql.jdbc.PreparedStatement;

import VO.JobRecord;

public class Jobs {

	public Jobs() {
		// TODO Auto-generated constructor stub
		
	}
	
	public ArrayList<JobRecord> getJobs(String userid)
	{
		ArrayList<JobRecord> jrecord = new ArrayList<JobRecord>();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/freelancingproject?useSSL=false", "root", "root");
			PreparedStatement prepstate = (PreparedStatement) con.prepareStatement("select userid, title, jobId, jobDesc, location, type from JobPosting where  userid = '" + userid + "' ");
			ResultSet rs = prepstate.executeQuery();
			JobRecord record;
			while(rs.next())
			{
				record = new JobRecord();
				record.setUserid(rs.getString("userid"));
				record.setTitle(rs.getString("title"));
				record.setJobId(rs.getString("jobId"));
				record.setJobDesc(rs.getString("jobDesc"));
				record.setLocation(rs.getString("location"));
				record.setTime(rs.getString("type"));
				jrecord.add(record);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return jrecord;	
	}

	public JobRecord getRecord(String jid, String userid)
	{
		JobRecord record = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/freelancingproject?useSSL=false", "root", "root");
			PreparedStatement prepstate = (PreparedStatement) con.prepareStatement("select userid, title, jobId, jobDesc, location, type from JobPosting where " + jid+ " = jobId");
			ResultSet rs = prepstate.executeQuery();
			while(rs.next())
			{
				if(userid.equals(rs.getString("userid")) && jid.equals(rs.getString("jobId")))
				{
					record = new JobRecord();
					record.setUserid(rs.getString("userid"));
					record.setTitle(rs.getString("title"));
					record.setJobId(rs.getString("jobId"));
					record.setJobDesc(rs.getString("jobDesc"));
					record.setLocation(rs.getString("location"));
					record.setTime(rs.getString("type"));
				}
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return record;
	}
}

package freelancing;

import java.util.ArrayList;
import java.util.Iterator;
import VO.JobRecord;
import DAO.Jobs;

public class ViewJobpostings {

	private String userid;
	private String jobId;
	
	public String getJobId() {
		return jobId;
	}

	public void setJobId(String jobId) {
		this.jobId = jobId;
	}

	public ViewJobpostings() {
		// TODO Auto-generated constructor stub
	}
	
	public void setUserid(String userid)
	{
		this.userid = userid;
	}
	
	public String getUserid()
	{
		return this.userid;
	}
	public Iterator<JobRecord> getPostings()
	{
		Jobs list = new Jobs();
		ArrayList<JobRecord> jrecords = list.getJobs(userid);
		
		return jrecords.iterator();
	}
	
	public JobRecord getJob()
	{
		Jobs jb = new Jobs();
		
		return jb.getRecord(jobId, userid);
	}

}

package freelancing;

import java.io.IOException;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CompanyJobpost;
import VO.CompanyJobpostInfo;
import VO.CompanyJobskillInfo;

/**
 * Servlet implementation class Company_Jobpost
 */
@WebServlet("/Company_Jobpost")
public class Company_Jobpost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Company_Jobpost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
doGet(request, response);
		
		
		String jobTitle = request.getParameter("jobTitle");
		String location = request.getParameter("location");
		String jobId = request.getParameter("jobId");
		String jobDescription = request.getParameter("jobDescription");
		String employmentType = request.getParameter("type");
		String userid = (String)request.getSession().getAttribute("userid");


		
		List<CompanyJobskillInfo> companyJobskillList=new ArrayList<CompanyJobskillInfo>();
String[] a=request.getParameterValues("skill"); 
for(String obj:a)
{
	CompanyJobskillInfo companyJobskill=new CompanyJobskillInfo();
	
	companyJobskill.setJobid(request.getParameter("jobId"));
	companyJobskill.setSkill(obj);
	System.out.println("skill:"+obj);
	companyJobskillList.add(companyJobskill);
}
if(CompanyJobpost.jobpostSkills(companyJobskillList))
{
	System.out.println("inserted skills");
}
else
{
	System.out.println("inserted not skills");
}

 getServletContext().getRequestDispatcher("/company_Dashboard.jsp").forward(request, response);
		
		
		
		
		
		
		
		
		
		
		
		int flag = 0;	
		
		
        if (jobDescription.isEmpty()) {
    	   
			flag = 1;
			request.setAttribute("error", "Plaese Enter Description");
		}
        
		if (flag == 1) {
		
			RequestDispatcher rd = request.getRequestDispatcher("company_Jobpost.jsp");
			rd.include(request, response);
		} 
		
		else {
		
			
			CompanyJobpostInfo cjpi= new CompanyJobpostInfo();
			cjpi.setJobTitle(jobTitle);
			cjpi.setJobId(jobId);
			cjpi.setLocation(location);
			cjpi.setJobDesc(jobDescription);
			cjpi.setType(employmentType);
			cjpi.setUserid(userid);
			
			CompanyJobpost cjp= new CompanyJobpost();
			cjp.jobpost(cjpi);
			
			//RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
			//rd.(request, response);
			request.getRequestDispatcher("company_Dashboard.jsp").forward(request, response);
			
		}
		
	}

}


package freelancing;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CompanyProfile;
import DAO.CompanyRegistration;
import VO.CompanyProfileInfo;
import VO.CompanyRegInfo;

/**
 * Servlet implementation class Company_Registration
 */
@WebServlet("/Company_Registration")
public class Company_Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Company_Registration() {
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
		
		
		CompanyRegInfo info = new CompanyRegInfo();
		CompanyProfileInfo profile = new CompanyProfileInfo();
		Boolean flag = false;
		
		info.setCompanyName(request.getParameter("companyName"));
		info.setEmail(request.getParameter("email"));
		info.setUserid(request.getParameter("userid"));
		info.setPassword(request.getParameter("password"));
		profile.setCompanyDes(request.getParameter("companyDescription"));
		System.out.println("description is " + profile.getCompanyDes());
		profile.setWebsite(request.getParameter("website"));
		System.out.println(profile.getWebsite());
		profile.setFounded(request.getParameter("founded"));
		
		
		System.out.println("after founded");
		if(info.getCompanyName().isEmpty() || info.getCompanyName().trim().length() == 0 || info.getCompanyName().length() > 30)
		{
			flag = true;
			System.out.println("here1");
			request.setAttribute("error", "Please enter information for Company Name");
		}
		else if(info.getEmail().isEmpty() || info.getEmail().trim().length() == 0 || info.getEmail().length() > 30)
		{
			System.out.println("here2");
			flag = true;
			request.setAttribute("error", "Please provide an email");
		}
		else if(info.getUserid().isEmpty() || info.getUserid().trim().length() == 0 || info.getUserid().length() > 20)
		{
			System.out.println("here3");
			flag = true;
			request.setAttribute("error", "please provide valid userid");
		}
		else if(info.getPassword().isEmpty() || info.getPassword().trim().length() == 0 || info.getPassword().length() > 16)
		{
			System.out.println("here4");
			flag = true;
			request.setAttribute("error", "Please provide valid password");
		}//next one should be description of company
		else if(profile.getCompanyDes().isEmpty() || profile.getCompanyDes().trim().length() == 0 || profile.getCompanyDes().length() > 4000)
		{
			System.out.println("here5");
			flag = true;
			request.setAttribute("error", "Please provide Company Description");
		}//next one is website
		else if(profile.getWebsite().isEmpty() || profile.getWebsite().trim().length() == 0 || profile.getWebsite().length() > 100)
		{
			System.out.println("here6");
			flag = true;
			request.setAttribute("error", "Please provide website url");
		}//next one is founded
		else if(profile.getFounded().isEmpty() || profile.getFounded().trim().length() == 0 || profile.getFounded().length() > 4)
		{
			System.out.println("here7");
			flag = true;
			request.setAttribute("error", "Please provide year founded");
		}
		
		
		if(flag)
		{
			System.out.println("here");
			request.getRequestDispatcher("company_Registration.jsp").forward(request, response);
			return;
		}
		
		
		profile.setUserid(info.getUserid());
		CompanyRegistration creg = new CompanyRegistration();
		creg.insert(info);
		
		CompanyProfile pro = new CompanyProfile();
		pro.insert(profile);
		
		//request.setAttribute("userid", profile.getUserid());
		request.setAttribute("message", "Successfully Registered");
		request.getRequestDispatcher("login.jsp").forward(request, response);
	

	}

}

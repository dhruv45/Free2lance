package freelancing;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CompanyLogin;
import VO.CompanyUser;
import VO.User;

/**
 * Servlet implementation class Login_Servlet
 */
@WebServlet("/Login_Servlet")
public class Login_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login_Servlet() {
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
		
		String user = request.getParameter("user");
		System.out.println(user);
	    HttpSession session = request.getSession();
		System.out.println("check");
		
		CompanyUser ctype = new CompanyUser();
		User type = new User();
		
		String s1 = request.getParameter("userid");
		
		
		if(user.equals("company"))
	   	 {
			System.out.println("check1");
	   		 ctype.setUserid((String)request.getParameter("userid"));
	   		 ctype.setPassword((String)request.getParameter("password"));
	   		 
	   		 System.out.println(ctype.getUserid());
	   		
	   		 DAO.CompanyLogin verify = new CompanyLogin(ctype);
	   		 
	   		 if(verify.UserExists())
	   		 {
	   			 ctype = verify.getCompanyUser();
	   			//System.out.println("check2");
	   			 request.setAttribute("userid", ctype.getUserid());
	   			 request.setAttribute("companyName", ctype.getCompanyName());
	   			 request.setAttribute("email", ctype.getEmail());
	   			  String s  = request.getParameter("userid");
	   			  System.out.println("U ID : "+s);
	   			  session.setAttribute("companyName", ctype.getCompanyName());
	   			  session.setAttribute("email", ctype.getEmail());
	   			 session.setAttribute("userid", s);
	   			 session.setAttribute("website", verify.getWebsite());
	   			 //session.setAttribute("website", ctype.get);
	   			//System.out.println("check4");
	   			RequestDispatcher rd;
	            //rd = getServletContext().getRequestDispatcher("/company_Jobpost.jsp");
	            rd = getServletContext().getRequestDispatcher("/company_Dashboard.jsp");
	            rd.forward(request, response);
	   			 
	   			 
	   			//request.getRequestDispatcher("company_Dashboard.jsp").forward(request, response);
	   			//System.out.println("check5");
	   		 }
	   		 else
	   		 {
	   			 request.setAttribute("message", "Please enter correct userid/password");
	   			 request.getRequestDispatcher("login.jsp").forward(request, response);
	   		 }
	   		System.out.println("check1");
	   	 }
	   	 else if(user.equals("Applicant"))
	   	 {
	   		 System.out.println("in correct area");
	   		 
	   		// response.sendRedirect("/Applicant_Login");
	   		 
	   		request.getRequestDispatcher("/Applicant_Login").forward(request, response);

	   		
	   		 //type.setUserid(request.getParameter("userid"));
	   		 //type.setPass(request.getParameter("password"));
	   		 /*
	   		 DAO.ApplicantLogin verification = new ApplicantLogin(type);
	   		 
	   		 if(verification.userExists())
	   		 {
	   			 System.out.println("user exists");
	   			 type = verification.getUser();
	   			 request.setAttribute("userid", type.getUserid());
	   			 request.setAttribute("firstName", type.getFirstName());
	   			 request.setAttribute("lastName", type.getLastName());
	   			 request.setAttribute("email", type.getEmail());
	   			 request.getRequestDispatcher("applicant_Dashboard.jsp").forward(request, response);///fill in where youre going to
	   		 }
	   		 else
	   		 {
	   			 System.out.println("user doesnt exist");
	   			 request.setAttribute("message", "Please enter correct userid/password");
	   			 request.getRequestDispatcher("login.jsp").forward(request, response);
	   		 }*/
	   	 }
	   	 else
	   	 {
	   		 System.out.println("get here");
	   		 request.setAttribute("message", "Please select type of login");
	   		 request.getRequestDispatcher("login.jsp").forward(request, response);
	   		 return;
	   	 }

	
	}

}

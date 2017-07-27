package freelancing;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CompanyProfile;
import VO.CompanyUser;

/**
 * Servlet implementation class Company_Profile
 */
@WebServlet("/Company_Profile")
public class Company_Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Company_Profile() {
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

		CompanyUser user = new CompanyUser();
		user.setCompanyName(request.getParameter("companyName"));
		user.setUserid(request.getParameter("userid"));
		user.setEmail(request.getParameter("email"));
		user.setPassword(request.getParameter("password"));
		
		
		CompanyProfile userprofile= new CompanyProfile();
		//userprofile.insert(user);
	
	}

}

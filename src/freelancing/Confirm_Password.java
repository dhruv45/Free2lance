package freelancing;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ForgotPassword;
import VO.User;

/**
 * Servlet implementation class Confirm_Password
 */
@WebServlet("/Confirm_Password")
public class Confirm_Password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Confirm_Password() {
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
		HttpSession session=request.getSession();
		System.out.println("Controller0");
		int OTP1=Integer.parseInt(request.getParameter("otp"));
		
		String password=request.getParameter("password");
		String password1=request.getParameter("password1");
		int otp1=(Integer)session.getAttribute("OTP");
		System.out.println("Testing "+ otp1);
		
		if(OTP1==otp1){
		if(password.equals(password1)){
			User User=new User();
			User.setEmail((String) session.getAttribute("email"));
			User.setPass(password);
			ForgotPassword ForgotPassword=new ForgotPassword();
			ForgotPassword.changePassword(User);
			response.sendRedirect("login.jsp");
		}
		else{
			response.sendRedirect("otp_Confirm.jsp");
		}
		}
		else{
			response.sendRedirect("otp_Confirm.jsp");
		}
	}
		

}

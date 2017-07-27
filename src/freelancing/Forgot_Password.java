package freelancing;

import java.io.IOException;
import java.util.Random;
import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Forgot_Password
 */
@WebServlet("/Forgot_Password")
public class Forgot_Password extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forgot_Password() {
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
	int OTP;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();	
		String email=request.getParameter("forgotEmail");
		
		session.setAttribute("email", email);
		
		int OTP = generateOTP(5);
		System.out.println(OTP);
			sendMail(email, OTP);
			session.setAttribute("OTP",OTP);
			System.out.println("this is your otp" +session.getAttribute("OTP"));
			response.sendRedirect("otp_Confirm.jsp");
		
	}
	public static void sendMail(String email,int OTP){

		java.util.Properties properties = new java.util.Properties();
		       properties.put("mail.smtp.auth", "true");
		        properties.put("mail.smtp.starttls.enable", "true");
		        javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);
		       
		       try {
		       	
		           MimeMessage message = new MimeMessage(mailSession);
		  
		          System.out.println("send mail"+OTP);
		           message.setContent("<h1>This is your OTP "+OTP+" Code</h1>","text/html" );
		           message.setSubject("OTP for Forgot password");
		           
		           InternetAddress sender = new InternetAddress(email,"Mail");
		           InternetAddress receiver = new InternetAddress(email);
		           message.setFrom(sender);
		           message.setRecipient(Message.RecipientType.TO, receiver);
		            message.saveChanges();
		           
		           javax.mail.Transport transport = mailSession.getTransport("smtp");
		           transport.connect("smtp.gmail.com", 587, "careers.freelancing@gmail.com", "freelancing");
		            transport.sendMessage(message, message.getAllRecipients());
		           transport.close();
		           
		                     
		       } catch (Exception e) {
		           e.printStackTrace();
		        }
	}

				public int generateOTP(int limit) {

				       int otp = 0;

				       if (limit > 5 || limit < 1)
				           limit = 3;

				       for (int i = 0; i < limit; i++) {

				           int x = new Random().nextInt(9);

				           if (x == 0 && i == 0)
				               i--;
				           else
				               otp = (otp * 10) + x;
				       }
				       
				       
				       
				       return otp;
				   }
				

		}



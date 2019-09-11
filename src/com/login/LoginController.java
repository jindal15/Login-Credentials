package com.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.service.LoginService;

/**
 * Servlet implementation class LoginController
 */
@WebServlet({ "/LoginController", "/login" })
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		String uName=request.getParameter("uname");
		String password=request.getParameter("password");
		LoginService ls=new LoginService();
		if(ls.validateLogin(uName, password)) {
			HttpSession ssn=request.getSession();
			ssn.setAttribute("uname", uName);
			response.sendRedirect("welcome.jsp");
		}
		else
		request.setAttribute("errorMessage", "Invalid Username or Password");
		request.getRequestDispatcher("invalid.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: handle exception
		}
	}

}

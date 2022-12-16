package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.customerdao;
import model.customermodel;

/**
 * Servlet implementation class customercontroller
 */
@WebServlet("/customercontroller")
public class customercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public customercontroller() {
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
		String action = request.getParameter("action");
		
		if(action.equalsIgnoreCase("register")) {
			
			customermodel c =  new customermodel();
	
			c.setName(request.getParameter("name"));
			c.setEmail(request.getParameter("email"));
			c.setPhone(Long.parseLong(request.getParameter("phone")));
			c.setPassword(request.getParameter("password"));
			
			System.out.println(c);
			
			new customerdao().insertuser(c);
			response.sendRedirect("login.jsp");
			
		}
		
		else if (action.equalsIgnoreCase("login")) {
			
			customermodel c = new customermodel();
			
			c.setEmail(request.getParameter("email"));
			c.setPassword(request.getParameter("password"));
			
			customermodel c1 =new customerdao().login(c);
			
			System.out.println(c1);
			
			if(c1==null) {
				request.setAttribute("validate", "email or password is incorrect");
		 		request.getRequestDispatcher("login.jsp").forward(request, response);
		 	}
		 	else {
		 		HttpSession session = request.getSession();
		 		session.setAttribute("data", c1);
		 		request.getRequestDispatcher("customerindex.jsp").forward(request, response);
		 	}
			}
		}
	
	

}



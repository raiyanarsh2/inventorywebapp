package com.inventory.webapp;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class WelcomeServlet
 */
public class WelcomeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public WelcomeServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("login");
		PrintWriter out = response.getWriter();
		if ("login".equals(action)) {
			ServletContext context = getServletContext();
			String dbUrl = context.getInitParameter("url");
//			String dbUrl = getServletConfig().getInitParameter("url");
			String dbuser = getServletConfig().getInitParameter("dbuser");
			String dbpwd = getServletConfig().getInitParameter("dbpwd");
			String pass = (String) request.getParameter("password");
			int customerId = Integer.parseInt(request.getParameter("customerId"));
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn = DriverManager.getConnection(dbUrl, dbuser, dbpwd);
				PreparedStatement ps = conn
						.prepareStatement("Select name from customer where customerID = ? and password = ?");
				ps.setInt(1, customerId);
				ps.setString(2, pass);

				ResultSet rs = ps.executeQuery();
				while (rs.next()) {
					String name = rs.getString(1);

					System.out.println(name);

					request.setAttribute("name", name);

					// Forward the request to home.jsp
					RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp"); // Relative to the web
																								// application root
					dispatcher.forward(request, response);
					return;
				}
				out.println("Login failed");

			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		} else {
			String name = (String) request.getParameter("name");
			String pass = (String) request.getParameter("password");
			int customerId = generateCustomerId();
			int phone = Integer.parseInt(request.getParameter("phone"));
			String email = request.getParameter("email");
			ServletContext context = getServletContext();
			String dbUrl = context.getInitParameter("url");
//		String dbUrl = getServletConfig().getInitParameter("url");
			String dbuser = getServletConfig().getInitParameter("dbuser");
			String dbpwd = getServletConfig().getInitParameter("dbpwd");

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection conn = DriverManager.getConnection(dbUrl, dbuser, dbpwd);
				PreparedStatement ps = conn.prepareStatement(
						"Insert into customer(customerID, name, email, phone,password) values(?,?,?,?,?)");
				ps.setInt(1, customerId);
				ps.setString(2, name);
				ps.setString(3, email);
				ps.setInt(4, phone);
				ps.setString(5, pass);

				int row = ps.executeUpdate();
				if (row > 0) {
					System.out.println("Value inserted into row");
					System.out.println("Customer Id: " + customerId);
					out.println("Value Inserted");
				} else
					out.println("Value Insertion Failed");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			System.out.println(name + "," + pass);
//		doGet(request, response);
		}
	}

	protected int generateCustomerId() {
		int ans = (int) Math.ceil(Math.random() * 100000);

		return ans;
	}

}

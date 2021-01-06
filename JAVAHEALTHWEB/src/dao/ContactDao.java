package dao;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class ContactDao
 */
@WebServlet(name = "ContactDao", urlPatterns = "/ContactDao")
public class ContactDao extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	private PrintWriter out;
    private Connection con;
    private PreparedStatement ps;
    private ResultSet rs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ContactDao() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
        try
        {
            out=response.getWriter();
           String name=request.getParameter("uname");
           String email=request.getParameter("email");
           String contact=request.getParameter("phone");
           String comment=request.getParameter("comment");
           Class.forName("com.mysql.jdbc.Driver");
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement","root","");
           String sql="insert into Table_Contact values (?,?,?,?)";
           ps=con.prepareStatement(sql);
           ps.setString(1,name);
           ps.setString(2,email);
           ps.setString(3,contact);
           ps.setString(4,comment);
           int i=ps.executeUpdate();
           if(i>0)
           {
                response.sendRedirect("ContactSubmitted.jsp");
                 //out.println("<h1>Registration Suucessful...</h1>");
           }
           else
           {
               out.println("<h1>Somethong Went Wrong Try Again...</h1>");
           }
        }
        catch(Exception e)
        {
            out.println(e);
        }
    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DocteurDao
 */
@WebServlet(name = "DoctorDao", urlPatterns = "/DoctorDao")
public class DoctorDao extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	PrintWriter out;
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    String Name, id;
    
    public DoctorDao() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
        out=response.getWriter();
		HttpSession session = request.getSession();
		
		try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement","root","");
            Name=request.getParameter("Doctor_name");
            String pass=request.getParameter("Password");
            id=request.getParameter("did");
            String sql="select * from Table_Doctor where Dname='"+Name+"' and Did='"+id+"' and Pass='"+pass+"' ";
            Statement st=con.createStatement();
            rs=st.executeQuery(sql);
            if (rs.next()) 
            {       
                response.sendRedirect("DoctorHome.jsp");
            }
            else 
            {
               response.sendRedirect("InvalidPassword.jsp");  
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
        session.setAttribute("dname", Name);
        session.setAttribute("did", id);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

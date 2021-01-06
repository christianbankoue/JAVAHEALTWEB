package dao;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdministrateurDao
 */
@WebServlet(name = "AdministrateurDao", urlPatterns = "/AdministrateurDao")
public class AdministrateurDao extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	PrintWriter out;
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdministrateurDao() {
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
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement","root","");
            String Name=request.getParameter("Admin_name");
            String Pass=request.getParameter("Password");
            String sql="select * from Admin_Table where Name=? and Password=?";
            ps=con.prepareStatement(sql);
            ps.setString(1,Name);
            ps.setString(2,Pass);
            ps.executeQuery();
            rs = ps.executeQuery();
            if (rs.next()) 
            {       
                response.sendRedirect("AdminHome.jsp");
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
        finally
        {
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(AdministrateurDao.class.getName()).log(Level.SEVERE, null, ex);
            }
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

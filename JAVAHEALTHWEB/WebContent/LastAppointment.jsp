<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>  
<style>
a
{
	text-decoration: none;
	color:red;
}
th
{
    background-color:red;
    color: white;
}
</style>
    </head>
 <body style="background-image: url(images/bg1.jpg);">
        <%!
            Connection con;
            Statement st,st1;
            String name,id,s4,s5,s6,s7,s8,s1,s2,id1;
            ResultSet rs;
            %>
       <%
     try
     {
         name =(String)session.getAttribute("name");
         id=request.getParameter("id");
        //out.println(id);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement","root","");
     st=con.createStatement();
     rs=st.executeQuery("select * from Table_Appointment where Pid='"+id+"'");
    %>
    <% if (!rs.next() ) {
    out.println("<center><h1>You have not book any appointment</h1></center>");
} else{ %>
    <%
      st1=con.createStatement();
     rs=st1.executeQuery("select Pid,Pname,Department,Dname,Fees,App_Date,App_Time,Messsage from Table_Appointment where Pid='"+id+"'");
    while(rs.next())
    {
        if(rs.getString("Messsage")!=null)
        {
     out.println("<center><h1>Your Appointment is cancelled by your consultant doctor.</h1></center>");
         //response.sendRedirect("AppointmentCancel.jsp");
        }
        else
        {
          out.println("<div class='container-fluid' style='padding:0px;'><div class='table-responsive'><table border='3' class='table table-striped'>");  
         out.println("<tr><th>Patient Name</th><th>Patient ID</th><th>Doctor Department</th><th>Doctor Name</th><th>Doctor Fees</th><th>Appointment Date</th><th>Appointment Time</th><th>Action</th></tr>");
          id1=rs.getString("Pid");
         name=rs.getString("Pname");
         s4=rs.getString("Department");
         s5=rs.getString("Dname");
         s6=rs.getString("Fees");
         s7=rs.getString("App_Date");
         s8=rs.getString("App_Time");
         out.println("<tr><td>"+name+"</td><td>"+id1+"</td><td>"+s4+"</td><td>"+s5+"</td><td>"+s6+"</td><td>"+s7+"</td><td>"+s8+"</td>");
out.println("<td><a href='EditAppointment.jsp?id="+id+"'>Edit</a>&nbsp;&nbsp;&nbsp;<a href='CancelAppointment.jsp?id="+id+"'>Cancel</a></td></tr></tr>");
        }
    }  }


      }
          catch(Exception e)
       {
           out.println(e);
   }
%>

</table></div></div>
<center>
    <a href="PatientHome.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="BookApointment.jsp">Book Appointment Now</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html">Logout</a>
</center>
    </body>
</html>

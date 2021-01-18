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
    </head>
    <body>
    
    <%!
		Connection con;
		PreparedStatement ps;
		Statement st;
		ResultSet rs;
		String dname, pid,bill,pname,name,name1,id;
	%>
    
    <%
     id=(String)session.getAttribute("pid");
     name1=(String)session.getAttribute("pname");
    //out.println(id+" "+name1);
     try {
         Class.forName("com.mysql.jdbc.Driver");
         con = DriverManager.getConnection("jdbc:mysql://localhost:3306/HospitalManagement", "root", "");
         st = con.createStatement();
         rs = st.executeQuery("select Pname,Pid,Department,Dname,Fees,App_Date,App_Time from Table_Appointment wher Pname='"+name1+"'");
         if(!rs.next())
         {
             %> 
             <center><h1>Aucun rendez-vous n'est fixé avec vous.</h1></center>
             <%
         }
         else
         {
         rs = st.executeQuery("select Pname,Pid,Department,Dname,Fees,App_Date,App_Time from Table_Appointment where Pname='"+name1+"'");
         while (rs.next()) {
            pid = rs.getString("Pid");
            name = rs.getString("Pname");
 %>  
    
    <table border="2">
    <tr>
    <th>Nom du patient</th><th>ID</th><th>Spécialité du docteur</th><th>Nom du docteur</th><th>Frais</th><th>Date</th><th>Heure</th>
  </tr>
    <%
        String s1=rs.getString("Pname");
        String s2=rs.getString("Pid");
        String s4=rs.getString("Department");
        String s5=rs.getString("Dname");
        String s6=rs.getString("Fees");
        String s7=rs.getString("App_Date");
        String s8=rs.getString("App_Time");
  
    %>
    
    <tr><td><%=s1%></td><td><%=s2%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td><td><%=s7%></td><td><%=s8%></td></tr>  
    <%
    }  
      }
    }
          catch(Exception e)
       {
           out.println(e);
   }
%>
  </table>
    </body>
</html>

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
    out.println("<center><h1>Aucun patient n'a pris de rendez-vous avec vous.</h1></center>");
} else{ %>
<div class="container-fluid" style="padding:0px;">
<div class="table-responsive"> 
<table border="3" class="table table-striped">
    <tr>
        <th>Nom du patient</th><th>ID</th><th>Department du docteur</th><th>Nom du docteur</th><th>Frais</th><th>Date du rendez-vous</th><th>Heure du rendez-vous</th><th>Action</th>
  </tr>
    <%
      st1=con.createStatement();
     rs=st1.executeQuery("select Pid,Pname,Department,Dname,Fees,App_Date,App_Time from Table_Appointment where Pid='"+id+"'");
    while(rs.next())
    {
         id1=rs.getString("Pid");
         name=rs.getString("Pname");
         s4=rs.getString("Department");
         s5=rs.getString("Dname");
         s6=rs.getString("Fees");
         s7=rs.getString("App_Date");
         s8=rs.getString("App_Time");
         
    %>
    
    <tr><td><%=name%></td><td><%=id1%></td><td><%=s4%></td><td><%=s5%></td><td><%=s6%></td><td><%=s7%></td><td><%=s8%></td>
    <td><a href="EditDAppointment.jsp?id=<%=id%>">Editer</a>&nbsp;&nbsp;&nbsp;<a href="CancelAppointment.jsp?id=<%=id%>">Annuler</a></td></tr></tr>  
    <%
    }  }


      }
          catch(Exception e)
       {
           out.println(e);
   }
%>

</table></div></div>
<center>
    <a href="index.html">Accueil</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="Logout.jsp">Deconnexion</a>
</center>
    </body>
</html>

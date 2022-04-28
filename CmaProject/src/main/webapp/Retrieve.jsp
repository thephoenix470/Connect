<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*,javax.swing.*" %>
<%
String username=request.getParameter("cUsername");
String pass=request.getParameter("cPass");
//int priv=3;

try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/corp", "root", "@cc3s5!");
           Statement st=conn.createStatement();
           ResultSet i=st.executeQuery("select u_username, u_pass, u_priv from users");
           while (i.next()){
        	   if(username.equals( i.getString("u_username"))){
        		   if(pass.equals(i.getString("u_pass"))){
        			   if(i.getInt("u_priv")>2){
        				   System.out.println("Hello Admin");
        				   response.sendRedirect("adminMain.jsp"); 
        			   }
        			   else{
        				   System.out.println("Hello User");
        			   response.sendRedirect("userMain.jsp");
        			   }
        		   }
        	   }
        	else{
        		request.setAttribute("alertMsg", "Username or Password are incorrect");
        		RequestDispatcher rd=request.getRequestDispatcher("/Login.jsp");  
        		rd.include(request, response);
        	}}
        
	st.close();
}

catch(SQLException sql)
{
        System.out.print(sql);
        sql.printStackTrace();
}
finally{
	
}
 %>
 <script>
 	
 </script>
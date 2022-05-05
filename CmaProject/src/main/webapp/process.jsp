<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
String first_name=request.getParameter("cFName");
String last_name=request.getParameter("cLName");
String email=request.getParameter("cEmail");
String username=request.getParameter("cUsername");
String pass=request.getParameter("cPass");
String city=request.getParameter("city");
int priv=1;

try
{
         Class.forName("com.mysql.jdbc.Driver");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3308/corp", "root", "@cc3s5!");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into users(u_fname,u_lname,u_email,u_username,u_pass,u_city,u_priv)values('"+first_name+"','"+last_name+"','"+email+"','"+username+"','"+pass+"','"+city+"','"+priv+"')");
	       System.out.println("Successfully Registered!");
           out.println("Successfully Registered!");
	       
        }
        catch(Exception e)
        {
        System.out.print(e);
        e.printStackTrace();
        }
response.sendRedirect("/login");
 %>
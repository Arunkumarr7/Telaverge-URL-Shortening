<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("name")==null){
		response.sendRedirect("studentlogin.jsp");
	}
%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<html lang="en">
<head>
<title>Telaverge</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}

      input[type=text],
      select,textarea{
       
        padding:8px;
        border: 1px solid #5A5A5A;
        border-radius: 24px;
        box-sizing: size="25";
        margin-top: 8px;
        margin-bottom: 8px;
        resize: vertical;
      }
      
	  
      input[type=submit] {
        background-color: w3-red;
        color: #5A5A5A;
        padding: 12px 20px;
        border: none;
        border-radius: 7px;
        cursor: pointer;
      }
      input[type=submit]:hover {
        background-color: lightcoral;
      }
      .container {
        border-radius: 24px;
        background-color: #808080;
        padding: 24px;
      }
tr#element:hover{
    background-color: coral;
    cursor: pointer;

}

</style>
</head>

	
<nav>
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="index.html" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="logout" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Logout</a>
        <a href="#1" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">My Alais</a>
	        <a href="#2" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Dashboard</a>
	
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white"><%=session.getAttribute("name") %></a>
  </div>
</nav>
 

<header class="w3-container w3-red w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">Welcome  <i class="fa fa-handshake-o" style="font-size:48px"></i>  <%=session.getAttribute("name")%> <i class="fa fa-heart-o" style="font-size:48px"></i> </h1>
  <p class="w3-xlarge">Hope! Your day going well! <i class="fa fa-thumbs-o-up" style="font-size:40px"></i></p>
  
</header>

<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-third w3-center">
      <i class="fa fa-newspaper-o w3-padding-64 w3-text-red" style="font-size:177px;color:red"></i>
      
    </div>

    <div class="w3-twothird">
      <h1><%=session.getAttribute("name") %>&nbsp;&nbsp;submit the URL links!</h1>
       <form action="studentHome.jsp" method="post"> 
	
       <label for="url" class="w3-large">Submit URL</label></br>
        <input type="text" id="url" name="url" placeholder="Place your URL...." size="25"></br>
        
        <label for="alais" class="w3-large">Give alais name</label></br>
        <input type="text" id="alias" name="alias" placeholder="Give alais for your URL...." size="25"></br>
        <input type="submit" value="submit" class="w3-red">
      </form>
    </div>
  </div>
</div>
<%

String alias=request.getParameter("alias");
String click=request.getParameter("click");
String url=request.getParameter("url");
 
RequestDispatcher dispatcher=null;

try { 
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://user.c70w4go4kkwp.eu-north-1.rds.amazonaws.com/user","arunkumar","Arunr!90085");
	PreparedStatement ps=con.prepareStatement("insert into dashboard(alias,url) values(?,?)");
	ps.setString(1, alias);
	ps.setString(2, url);
	
	int rowCount=ps.executeUpdate(); 
	
	
	
	
}catch(Exception e)
{
	System.out.println(e);
}

%>

<section id=1>
<div class="w3-row-padding w3-sand w3-padding-64 w3-container">
  <div class="w3-content">
   <div class="w3-third w3-center">
      <i class="fa fa-link w3-padding-64 w3-text-red" style="font-size:177px;color:red"></i>
      
    </div>

    <div class="w3-twothird">
      <h1><%=session.getAttribute("name") %>&nbsp;&nbsp;get sbmited alais link!</h1>
       <table style="border-collapse: collapse;width: 100%;" >
<tr class="w3-pale-red">
<td style="padding: 8px;
  text-align: left;
  border-bottom: 2px solid #ddd; color:">Alais</td>



</tr>
<%
	
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://user.c70w4go4kkwp.eu-north-1.rds.amazonaws.com/user","arunkumar","Arunr!90085");
	PreparedStatement ps = con.prepareStatement("select * from dashboard order by slno desc limit 1");
	
	ResultSet rs=ps.executeQuery();

while(rs.next()){
%>
<tr id="element">
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"><a href="<%=rs.getString("url") %>"><%=rs.getString("alias") %></a></td>


</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>     
    </div>
   
</section>
<!-- Second Grid -->
<section id=2>
<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-third w3-center">
      <i class="fa fa-address-card w3-padding-64 w3-text-red" style="font-size:177px;color:red"></i>
      <h4><a href="studentForgotPassword.jsp">Password Change</a></h4>
    </div>

    <div class="w3-twothird">
      <h1><%=session.getAttribute("name")%>&nbsp;&nbsp; Yours Dashboard</h1>
      <table style="border-collapse: collapse;width: 100%;" >
<tr class="w3-pale-red">
<td style="padding: 8px;
  text-align: left;
  border-bottom: 2px solid #ddd; color:">SiNo</td>
  
<td style="padding: 8px;
  text-align: left;
  border-bottom: 2px solid #ddd; color:">Alais</td>

<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;">Clicks</td>
  
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;">url</td>

</tr>
<%
	
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://user.c70w4go4kkwp.eu-north-1.rds.amazonaws.com/user","arunkumar","Arunr!90085");
	PreparedStatement ps = con.prepareStatement("select * from dashboard ");
	
	ResultSet rs=ps.executeQuery();

while(rs.next()){
%>
<tr id="element">
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"><%=rs.getString("slno") %></td>
  
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"><a href="<%=rs.getString("url") %>"><%=rs.getString("alias") %></a></td>
  
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"><%=rs.getString("clicks") %></td>
  
<td style="padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;"><%=rs.getString("url") %></td>

</tr>
<%
}
con.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>     
      
      
    </div>
  </div>
</div>
</section>

<!-- Footer -->
<footer class="w3-container w3-padding-24 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
  
 </div>
 <h3><span class="fa fa-copyright" style="font-size:24px"></span>Telaverge, All rights reserved </h3>
</footer>



</body>
</html>




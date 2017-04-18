
<%@page import="Model.Employee"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registration!</h1>
      
    <%String msg1=request.getParameter("msginsert");
       if(msg1!=null)
        {
    %>

    <font color="red"><%=msg1%></font>
    <%}%>

<form name="f1" method="post" action="/MykarsolUtility/EmpServlet">
          Id<input type="text" name="txtId"><br>
          First Name:<input type="text" name="txtName"/><br>
          Last Name:<input type="text" name="txtLname"/><br>
          College:<input type="text" name="txtCol"/><br>
          
          Semester :<input type="text" name="txtSem"/><br>
          
          Branch :<input type="text" name="txtBranch"/><br>
          Birth date :<input type="text" name="txtDob"/><br>
          Gender:<input type="text" name="txtGen"/><br>
          Contact No:<input type="text" name="txtCon"/><br>
          Email :<input type="text" name="txtEmail"/><br>
          Address :<input type="text" name="txtAdd"/><br>
          Area:<input type="text" name="txtArea"/></br>
          Pin:<input type="text" name="txtPin"/></br>
          City:<input type="text" name="txtCity"/></br>
                    
          <input type="submit" name="btnSubmit" value="Insert"/>
          <input type="submit" name="btnView" value="View"/>
          <input type="submit" name="btnDelete" value="Delete"/>                    
</form>
    
    
 
            
    </body>
</html>

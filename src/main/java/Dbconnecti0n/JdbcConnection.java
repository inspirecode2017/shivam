/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Dbconnecti0n;

import java.sql.*;
import javax.servlet.ServletContext;

/**
 *
 * @author Minaz
 */
public class JdbcConnection {
    
    static ServletContext ctx;
    static String url,driver,un,up;
    static Connection con;
    
    public static Connection getConnection(ServletContext actx)
    {
    
        ctx=actx;
        driver =ctx.getInitParameter("driver");
        url=ctx.getInitParameter("url");
        un=ctx.getInitParameter("username");
        up=ctx.getInitParameter("password");
       
        
        try
        {
             Class.forName(driver);
	     System.out.println("Driver is loaded");

	     con=DriverManager.getConnection(url,un,up);
	     System.out.println("Connected");
            
        }
        catch(ClassNotFoundException cnfe)
	{
	  System.out.println(cnfe.getMessage());
	}
	catch(SQLException sqle)
	{
	  System.out.println(sqle.getMessage());
	}
        return con;
    }
    
    
    
    public static void closeConnection(Connection con)
    {
        try
        {
            con.close();
        }
        
        catch(Exception e)
	{
	  System.out.println(e.getMessage());
	}
    }
}


package Operations;

import Dbconnecti0n.JdbcConnection;
import Model.Employee;
import java.sql.*;
import java.util.*;
import javax.servlet.ServletContext;
/**
 *
 * @author Minaz
 */
public class EmployeeOperation {
    
    ServletContext ctx;
    Statement stmt;
    Connection con;
    String sql;
    ResultSet rs;

    public EmployeeOperation(ServletContext actx) {
        ctx = actx;
    }
    
    public String insertEmployee(Employee emp)
    {
        String msg="";
     //   Statement stmt;
       // String sql;
        con=JdbcConnection.getConnection(ctx);
             
            
        
           
        if(emp!=null)
        {     
        sql="insert into workshop_registration values("+emp.getEid()+",'"+emp.getFirstname()+"','"+ emp.getLastname()+"','"+emp.getDob()+"','"+emp.getGender()+"','"+emp.getCollage()+"', "+emp.getSem()+", '"+emp.getBranch()+"', "+emp.getContactno()+",'"+emp.getEmail()+"','"+emp.getDor()+"','"+emp.getCity()+"','"+emp.getAddress()+"',"+emp.getPin()+")";   
            System.out.println("sqlll========"+sql);
        try
        {               
            stmt=con.createStatement();
            stmt.executeUpdate(sql);
            msg="success";
        }        
         catch(Exception e)
	{
	  msg=e.getMessage();
	}
        }
        else
        {
             msg="val of obj is null"   ;
        }
        JdbcConnection.closeConnection(con);
        return msg;
        }
    
    
    public ArrayList<Employee> getAllDetails()
    {        
        int eid;
        String en,ep;
        ArrayList<Employee> empdetails=new ArrayList<Employee>();
        try
        {
              con=JdbcConnection.getConnection(ctx);
              stmt=con.createStatement();
           
         rs=stmt.executeQuery("select * from workshop_registration");   
           
         while(rs.next())
         {
             Employee emp=new Employee();
             eid=rs.getInt(1);
             en=rs.getString(2);
             ep=rs.getString(3);
            
           //  emp.setEid(eid);
           //  emp.setEname(en);
           //  emp.setEpassword(ep);
             
             empdetails.add(emp);
         }                  
        }
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return empdetails;
    }
    
    public ArrayList<Integer> getEmpid()
    {
        int eid;
       
        ArrayList<Integer> ed= new ArrayList<Integer>();
        try
        {
         con=JdbcConnection.getConnection(ctx);
         stmt=con.createStatement();            
         rs=stmt.executeQuery("select rid from workshop_registration");   
         
         while(rs.next())
         {            
             eid=rs.getInt(1);                        
             ed.add(eid);             
         }                  
        }        
        catch(Exception e)
        {
            System.out.println(e.getMessage());
        }
        return ed;
    }    
    
    
    public String  deleteEmployee(int emid)
    {
        String msg="";
        try
        {
         con=JdbcConnection.getConnection(ctx);
         stmt=con.createStatement();              
         stmt.executeUpdate("delete from workshop_registration where rid="+emid+"");
         msg="success";
        }
        catch(SQLException e)
        {
            System.out.println(e.getMessage());
        }
        return msg;
    }    
 }
    
    
    


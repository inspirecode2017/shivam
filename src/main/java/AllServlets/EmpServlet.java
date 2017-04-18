package AllServlets;

import Model.Employee;
import Operations.EmployeeOperation;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.*;
import javax.servlet.http.*;
import java.util.*;

public class EmpServlet extends HttpServlet {

    ServletContext scx;

    @Override
    public void init(ServletConfig sc) throws ServletException {
        super.init(sc);
        scx = getServletContext();

        try {
            scx = sc.getServletContext();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        System.out.println();

        EmployeeOperation eo = new EmployeeOperation(scx);

        if (request.getParameter("btnSubmit") != null) {
            Employee emp = new Employee();
          // Employee  emp = new Employee();
            //  EmployeeOperation eo = new EmployeeOperation(scx);

            int id = Integer.parseInt((request.getParameter("txtId")));
            String nm = request.getParameter("txtName");
            String ln = request.getParameter("txtLname");
            String cl = request.getParameter("txtCol");
            int sm = Integer.parseInt((request.getParameter("txtSem")));
            String db = request.getParameter("txtDob");
            String gn = request.getParameter("txtGen");
            long cn = Long.parseLong(request.getParameter("txtCon"));
            String em = request.getParameter("txtEmail");
            String ad = request.getParameter("txtAdd");
            String ar = request.getParameter("txtArea");
            int pn = Integer.parseInt(request.getParameter("txtPin"));
            String ct = request.getParameter("txtCity");
            String br=request.getParameter("txtBranch");

            emp.setEid(id);
            emp.setFirstname(nm);
            emp.setLastname(ln);
            emp.setDob(db);
            emp.setGender(gn);
            emp.setCollage(cl);
            emp.setSem(sm);
            emp.setBranch(br);
            
            
            emp.setContactno(cn);
            emp.setEmail(em);
            emp.setDor("1/1/17");
            emp.setCity(ct);
            emp.setAddress(ad);
            emp.setPin(pn);
           
         
                                     
          String msg1 = eo.insertEmployee(emp);

            if (msg1.equals("success")) {
                msg1 = "data inserted";
            }
            System.out.println("---77-----"+scx.getContextPath());
            response.sendRedirect(scx.getContextPath() + "/empInsert.jsp?msginsert=" + msg1);
        }

        if (request.getParameter("btnView") != null) {
            ArrayList<Employee> edetails;
            edetails = eo.getAllDetails();
            HttpSession hs = request.getSession(true);
            hs.setAttribute("record", edetails);
            response.sendRedirect(scx.getContextPath() + "/empInsert.jsp");
        }

        if (request.getParameter("btnDelete") != null) {
            ArrayList<Integer> empid;
            empid = eo.getEmpid();
            HttpSession hs = request.getSession(true);
            hs.setAttribute("recordid", empid);
            response.sendRedirect(scx.getContextPath() + "/empInsert.jsp");
        }

        if (request.getParameter("btnDel") != null) {
            int eid = Integer.parseInt(request.getParameter("selid"));
            String msg2 = eo.deleteEmployee(eid);
            if (msg2.equals("success")) {
                msg2 = "Delete successful";
            }

            response.sendRedirect(scx.getContextPath() + "/empInsert.jsp?msgdel=" + msg2);
        }
    }
}

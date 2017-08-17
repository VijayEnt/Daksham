/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daksham.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author ParthBheda
 */
public class groupreg extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet groupreg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet groupreg at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out =response.getWriter();
        if(request.getParameter("slook")!=null){
                response.sendRedirect("grouplookup.jsp");
            }
        else if(request.getParameter("ssave")!=null){
            Connection connection = com.daksham.connection.connection.setConnection();
            if(connection==null){
                out.println("<script type=\"text/javascript\">");            
                out.println("alert('Please Check Database Connection!');");
                out.println("location='groupreg.jsp';");
                out.println("</script>");
            }
            else{
                try
                {
                String gcode = request.getParameter("cid");
                String gname = request.getParameter("cname");
                String gtype = request.getParameter("ckey");
                if(gcode.equals("")){
                out.println("<script type=\"text/javascript\">");            
                out.println("alert('Group Code could not be blank!');");
                out.println("location='groupreg.jsp';");
                out.println("</script>");    
                }
                else if(gname.equals("")){
                out.println("<script type=\"text/javascript\">");            
                out.println("alert('Group Name could not be blank!');");
                out.println("location='groupreg.jsp';");
                out.println("</script>");        
                }
                else if(gtype.equals("")){
                out.println("<script type=\"text/javascript\">");            
                out.println("alert('Group Type could not be blank!');");
                out.println("location='groupreg.jsp';");
                out.println("</script>");    
                }
                else{
                    PreparedStatement psts = connection.prepareStatement("insert into mstgroup (groupCode, groupName, groupType, creationDate, actionDate, actionUserID) values (?,?,?,now(),now(),1)");
                    psts.setString(1, gcode);
                    psts.setString(2, gname);
                    psts.setString(3, gtype);
                    psts.executeUpdate();
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('Successfully enrolled with value "+gname+"!');");
                    out.println("location='groupreg.jsp';");
                    out.println("</script>");
                    psts.close();
                }
            }
                catch(Exception ex){
                    ex.printStackTrace(out);
                }
        }
    }
    }
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

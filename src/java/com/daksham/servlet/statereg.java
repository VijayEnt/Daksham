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
public class statereg extends HttpServlet {

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
            out.println("<title>Servlet state</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet state at " + request.getContextPath() + "</h1>");
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
        PrintWriter out = response.getWriter();
        try{
        Connection connection=com.daksham.connection.connection.setConnection();
        if(request.getParameter("slook")!=null){
            response.sendRedirect("statelookup.jsp");
        }
        else if(request.getParameter("ssave")!=null){
            try{
            String statename = request.getParameter("sname");
            String stateabb = request.getParameter("sabb");
            if(statename.equals("")){
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('State Name should not be blank!');");
                        out.println("location='cityreg.jsp';");
                        out.println("</script>");
                    }
            else{
            PreparedStatement ptst = connection.prepareStatement("insert into mststate (stateName,stateAbb,creationDate,actionDate,actionUserID) values (?,?,now(),now(),1)");
            ptst.setString(1, statename);
            ptst.setString(2, stateabb);
            ptst.executeUpdate();    
            out.println("<script type=\"text/javascript\">");
            out.println("alert('State "+statename+" enrolled!');");
            out.println("location='statereg.jsp';");
            out.println("</script>");
            }
            }
            catch(Exception ex){
                ex.printStackTrace(out);
            }            
        }
        else if(request.getParameter("supdate")!=null){
            try{
            String statename = request.getParameter("sname");
            String stateabb = request.getParameter("sabb");
            String scode=request.getParameter("scode");
            if(statename.equals("")){
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('State Name should not be blank!');");
                        out.println("location='cityreg.jsp';");
                        out.println("</script>");
                    }
            else{
            PreparedStatement ptst = connection.prepareStatement("update mststate set stateName='"+statename+"',stateAbb='"+stateabb+"',isActive='Y',actionDate=now(),actionUserID=1 where statecode='"+scode+"'");
            ptst.executeUpdate();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('State information with "+statename+" Updated!');");
            out.println("location='statereg.jsp';");
            out.println("</script>");
        }
            }
            catch(Exception ex){
                ex.printStackTrace(out);
            }
    }
        else if(request.getParameter("btndeactive")!=null){
            try{
           String scode=request.getParameter("dname");
           String statename = request.getParameter("sname");
           PreparedStatement ptst = connection.prepareStatement("update mststate set isActive = 'N',actiondate=now(),actionuserid=1 where stateCode='"+scode+"'");
           ptst.executeUpdate();
           out.println("<script type=\"text/javascript\">");
           out.println("alert('"+statename+" Deactivated!');");
           out.println("location='statereg.jsp';");
           out.println("</script>");
        }
            catch(Exception ex){
                ex.printStackTrace(out);
            }
        }
        connection.close();
        }
        catch(Exception ex){
            ex.printStackTrace(out);
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daksham.servlet;

import com.daksham.connection.connection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Parth
 */
public class transport extends HttpServlet {

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
            out.println("<title>Servlet transport</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet transport at " + request.getContextPath() + "</h1>");
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
        Connection connection = com.daksham.connection.connection.setConnection();
        if(request.getParameter("ssave")!=null){
           try{
               String trptcode=request.getParameter("tid");
               String trptName = request.getParameter("tname");
               String addtype = request.getParameter("addtype");
               String addl1 = request.getParameter("add1");
               String addl2 = request.getParameter("add2");
               String addl3 = request.getParameter("add3");
               String addl4 = request.getParameter("add4");
               String city = request.getParameter("city");
               String state = request.getParameter("state");
               String country = request.getParameter("country");
               String landmark = request.getParameter("landmark");
               String pincode = request.getParameter("pincode");
               String trptloc = request.getParameter("location");
               String tabb = request.getParameter("tabb");
               String tgst = request.getParameter("tgst");
               String cno1 = request.getParameter("cno1");
               String cno2 = request.getParameter("cno2");
                              
           }
           catch(Exception ex){
               ex.printStackTrace(out);
           }
        }
        connection.close();
        }
        catch (Exception ex){
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

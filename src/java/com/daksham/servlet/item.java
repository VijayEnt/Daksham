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
 * @author Parth
 */
public class item extends HttpServlet {

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
            out.println("<title>Servlet item</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet item at " + request.getContextPath() + "</h1>");
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
        if(request.getParameter("ssave")!= null){
            try{
                String icode = request.getParameter("tid");
                String iname = request.getParameter("tname");
                String itype = request.getParameter("itype");
                String irate = request.getParameter("irate");
                String iunit = request.getParameter("iunit");
                String iratekg = request.getParameter("iratekg");
                String igst = request.getParameter("igst");
                String igtype = request.getParameter("igtype");
                PreparedStatement ptst1 = connection.prepareStatement("insert into mstitem(itemCode,itemName,itemType,itemRatePerUnit,itemQntyPerKG,itemRatePerKG,gstPercent,creationDate,actionDate,actionUserID) values(?,?,?,?,?,?,?,now(),now(),1)");
                PreparedStatement ptst2 = connection.prepareStatement("")
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

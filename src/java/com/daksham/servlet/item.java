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
import java.sql.Types;
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
                String[] igtype = request.getParameterValues("igtype");
                String igtypev = request.getParameter("igtype");
                PreparedStatement ptst1 = connection.prepareStatement("insert into mstitem(itemCode,itemName,itemType,itemRatePerUnit,itemQntyPerKG,itemRatePerKG,gstPercent,creationDate,actionDate,actionUserID) values(?,?,?,?,?,?,?,now(),now(),1)");
                ptst1.setString(1,icode );
                ptst1.setString(2, iname);
                ptst1.setString(3, itype);
                if(irate.equals("")){
                    ptst1.setNull(4, Types.INTEGER);
                }
                else{
                ptst1.setString(4, irate);
                }
                if(iunit.equals("")){
                    ptst1.setNull(5, Types.INTEGER);
                }
                else{
                ptst1.setString(5, iunit);
                }
                ptst1.setString(6, iratekg);
                ptst1.setString(7, igst);
                if(igtypev.equals("-1")){
                    ptst1.executeUpdate();
                }
                else{
                    ptst1.executeUpdate();
                    String igtypes = " ";
                    for(int i = 0; i < igtype.length;i++ ){
                     //igtypes+=igtype[i];  
                    //}
                    PreparedStatement ptst2 = connection.prepareStatement("insert into rel_itemgroup (itemID,groupID,creationDate,actionDate,actionUserID) select itemID,?,now(),now(),1 from mstitem order by itemID desc limit 1");
                    ptst2.setString(1, igtype[i]);                    
                    ptst2.executeUpdate();
                    }
                }
                out.println("<script type=\"text/javascript\">");            
                out.println("alert('"+iname+" Enrolled!');");
                out.println("location='item.jsp';");
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

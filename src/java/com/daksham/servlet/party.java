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
public class party extends HttpServlet {

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
            out.println("<title>Servlet party</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet party at " + request.getContextPath() + "</h1>");
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
        Connection connection = com.daksham.connection.connection.setConnection();
        PrintWriter out = response.getWriter();
        try{
            if(request.getParameter("ssave")!=null){
                try{
                    String pid = request.getParameter("cid");
                    String pname = request.getParameter("cname");
                    String addtype = request.getParameter("addtype");
                    String add1=request.getParameter("add1");
                    String add2 = request.getParameter("add2");
                    String add3= request.getParameter("add3");
                    String add4 = request.getParameter("add4");
                    String city = request.getParameter("city");
                    String state = request.getParameter("state");
                    String country = request.getParameter("country");
                    String landmark = request.getParameter("landmark");
                    String pincode = request.getParameter("pincode");
                    String ptype = request.getParameter("ptype");
                    String pabb = request.getParameter("pabb");
                    String pgst = request.getParameter("pgst");
                    String cno1 = request.getParameter("cno1");
                    String cno2 = request.getParameter("cno2");
                    String email = request.getParameter("pemail");
                    String doi = request.getParameter("pdoi");
                    String obal = request.getParameter("pobal");
                    String cbal = request.getParameter("pcbal");
                    String entity = request.getParameter("entity");
                    String mark = request.getParameter("pmark");
                    if(pid.equals("")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Party code should not be blank!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else if(pname.equals("")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Party Name should not be blank!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else if(addtype.equals("-1")){
                        out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Address should not be blank!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else if(add1.equals("")){
                        out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Address should not be blank!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else if(add2.equals("")){
                        out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Address should not be blank!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else if(city.equals("-1")){
                        out.println("<script type=\"text/javascript\">");            
                            out.println("alert('City should not be blank!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else if(state.equals("-1")){
                        out.println("<script type=\"text/javascript\">");            
                            out.println("alert('State should not be blank!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else if(country.equals("-1")){
                        out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Country should not be blank!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else if(ptype.equals("")){
                        out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Party Type should not be blank!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else if(cno1.equals("")){
                        out.println("<script type=\"text/javascript\">");            
                            out.println("alert('At least one contact number required!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else if(doi.equals("")){
                        out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Party D.O.I should not be blank!');");
                            out.println("location='partyreg.jsp';");
                            out.println("</script>");
                    }
                    else{
                        PreparedStatement ptst1 = connection.prepareStatement("");
                        PreparedStatement ptst2=connection.prepareStatement("")
                    }
                }
                catch(Exception ex){
                    ex.printStackTrace(out);
                }
            }
            connection.close();
        }
        
        catch(Exception ex){
            ex.printStackTrace();
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

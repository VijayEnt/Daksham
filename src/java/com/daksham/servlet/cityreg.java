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
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Parth
 */
public class cityreg extends HttpServlet {

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
            out.println("<title>Servlet cityreg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet cityreg at " + request.getContextPath() + "</h1>");
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
        if(request.getParameter("slook")!=null){
            response.sendRedirect("citylookup.jsp");
        }
        else if(request.getParameter("ssave")!=null){
            if(connection==null){                
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Please Check Database Connection!');");
            out.println("location='cityreg.jsp';");
            out.println("</script>");
            }
            else
            {
                try{                    
                    String cityname = request.getParameter("cname");
                    String cityabb = request.getParameter("cabb");
                    String state = request.getParameter("state");
                    if(cityname.equals("")){
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('City Name should not be blank!');");
                        out.println("location='cityreg.jsp';");
                        out.println("</script>");
                    }
                    else{
                    PreparedStatement psts = connection.prepareStatement("selecy * from mstcity where cityName = '"+cityname+"'");
                    ResultSet rs = psts.executeQuery();
                    if(rs.next()){
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('"+cityname+" with same name already Exsits, please try with some different name!');");
                        out.println("location='cityreg.jsp';");
                        out.println("</script>");
                    }
                    else{
                    PreparedStatement ptst = connection.prepareStatement("insert into mstcity (cityName,cityAbb,stateCode,creationDate,actionDate,actionUserID) values (?,?,?,now(),now(),1)");
                    ptst.setString(1, cityname);
                    ptst.setString(2, cityabb);
                    ptst.setString(3, state);
                    ptst.executeUpdate();
                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('City "+cityname+" enrolled!');");
                    out.println("location='cityreg.jsp';");
                    out.println("</script>");
                    }
                    }
                }
                catch(Exception ex){
                    ex.printStackTrace(out);
                }
            }
        }
        else if(request.getParameter("btndeactive")!=null){
            try{
                String cityname = request.getParameter("sname");
                String cityCode =request.getParameter("dname");
                PreparedStatement ptst = connection.prepareStatement("update mstcity set isActive='N',actiondate=now(),actionuserid=1 where cityCode='"+cityCode+"'");
                ptst.executeUpdate();
                out.println("<script type=\"text/javascript\">");
                out.println("alert('"+cityname+" Deactivated!');");
                out.println("location='cityreg.jsp';");
                out.println("</script>");
            }
            catch(Exception ex){
                ex.printStackTrace(out);
            }
        }
        else if(request.getParameter("supdate")!=null){
                    try{
                    String cityname = request.getParameter("cname");
                    String cityabb = request.getParameter("cabb");
                    String state = request.getParameter("state");
                    String citycode=request.getParameter("ctcode");
                    if(cityname.equals("")){
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('City Name should not be blank!');");
                        out.println("location='cityreg.jsp';");
                        out.println("</script>");
                    }
                    else{ 
                        PreparedStatement ptst =connection.prepareStatement("update mstcity set cityname='"+cityname+"',cityAbb='"+cityabb+"',stateCode='"+state+"',isActive='Y',actionDate=now(),actionUserID=1 where citycode='"+citycode+"';");
                        ptst.executeUpdate();
                        out.println("<script type=\"text/javascript\">");
                        out.println("alert('City "+cityname+" updated!');");
                        out.println("location='cityreg.jsp';");
                        out.println("</script>");
                    }
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

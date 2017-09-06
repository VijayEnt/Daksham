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
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;
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
               if(trptloc.equals("-1")){
                   
               }
               //Address master
               PreparedStatement psts = connection.prepareStatement("select * from mstransport where trptcode = '"+trptcode+"'");
               ResultSet rs = psts.executeQuery();
               if(rs.next()){
                out.println("<script type=\"text/javascript\">");            
                out.println("alert('"+trptcode+" already exists, please try with different code!');");
                out.println("location='transreg.jsp';");
                out.println("</script>");
               }
               else{
               PreparedStatement ptst1 = connection.prepareStatement("insert into mstaddress (addresstypecode,addressline1,addressline2,addressline3,addressline4,landmark,citycode,state,country,pincode,creationDate,ActionDate,actionUserID) values(?,?,?,?,?,?,?,?,?,?,now(),now(),1);");
                        ptst1.setString(1, addtype);
                        ptst1.setString(2, addl1);
                        ptst1.setString(3, addl2);
                        if(addl3.equals("")){
                            ptst1.setNull(4, Types.VARCHAR);
                        }
                        else{
                        ptst1.setString(4, addl3);
                        }
                        if(addl4.equals("")){
                            ptst1.setNull(5, Types.VARCHAR);
                        }
                        else{
                        ptst1.setString(5, addl4);
                        }
                        if(landmark.equals("")){
                            ptst1.setNull(6, Types.VARCHAR);
                        }
                        else{
                        ptst1.setString(6, landmark);
                        }
                        ptst1.setString(7, city);
                        ptst1.setString(8, state);
                        ptst1.setString(9, country);
                        if(pincode.equals("")){
                            ptst1.setNull(10, Types.INTEGER);
                        }
                        else{
                        ptst1.setString(10, pincode);
                        }
                        //ptst1.setString(11, cno);
               //Transport Master
               PreparedStatement ptst2 = connection.prepareStatement("insert into msttransport (trptAddressID,trptCode,trptName,trptServiceLocation,trptAbb,trptGSTCode,trptContactNo1,trptContactNo2,creationDate,actionDate,actionUserID) Select mstaddress.address_id,?,?,?,?,?,?,?,now(),now(),1 from mstaddress order by mstaddress.address_id desc limit 1");
               ptst2.setString(1, trptcode);
               ptst2.setString(2,trptName);
               ptst2.setString(3, trptloc);
               if(tabb.equals("")){
                   ptst2.setNull(4, Types.VARCHAR);
               }
               else{
               ptst2.setString(4,tabb);
               }
               if(tgst.equals("")){
                   ptst2.setNull(5, Types.VARCHAR);
               }
               else{
               ptst2.setString(5,tgst);
               }
               ptst2.setString(6, cno1);
               if(cno2.equals("")){
                   ptst2.setNull(7, Types.VARCHAR);
               }
               else{
               ptst2.setString(7,cno2);
               }
               ptst1.executeUpdate();
               ptst2.executeUpdate();
                out.println("<script type=\"text/javascript\">");            
                out.println("alert('"+trptName+" Enrolled!');");
                out.println("location='transreg.jsp';");
                out.println("</script>");
               }
           }
           catch(Exception ex){
               ex.printStackTrace(out);
           }
        }
        else if(request.getParameter("btndeactive")!=null){
            try{
            String tid = request.getParameter("dname");
            String trptName = request.getParameter("gname");
            PreparedStatement pstst = connection.prepareStatement("update msttransport set isActive='N',actiondate=now(),actionuserID=1 where trptID = '"+tid+"'");
            pstst.executeUpdate();
                out.println("<script type=\"text/javascript\">");            
                out.println("alert('"+trptName+" Enrolled!');");
                out.println("location='trptlookup.jsp';");
                out.println("</script>");
            }
            catch(Exception ex){
                ex.printStackTrace(out);
            }
        }
        else if (request.getParameter("slook")!=null){
            response.sendRedirect("trptlookup.jsp");
        }
        else if(request.getParameter("usave")!=null){
         try{
               String trptcode=request.getParameter("tid");
               String trptName = request.getParameter("tname");
               String addtype = request.getParameter("trptaddid");
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
               String tid = request.getParameter("trptid");
               PreparedStatement ptst1 = connection.prepareStatement("update msttransport set trptName=?,trptServiceLocation=?,trptAbb=?,trptGSTCode=?,trptContactNo1=?,trptContactNo2=?, isActive='Y',actiondate=now(),actionuserID=1 where trptID = '"+tid+"'");
               ptst1.setString(1, trptName);
               ptst1.setString(2, trptloc);
               if(tabb.equals("null")){
                   ptst1.setNull(3, Types.VARCHAR);
               }
               else{
               ptst1.setString(3,tabb);
               }
               if(tgst.equals("null")){
                   ptst1.setNull(4,Types.VARCHAR);
               }
               else{
               ptst1.setString(4, tgst);
               }
               ptst1.setString(5, cno1);
               if(cno2.equals("null")){
                   ptst1.setNull(6, Types.VARCHAR);
               }
               else{
                   ptst1.setString(6, cno2);
               }
               PreparedStatement ptst2 = connection.prepareStatement("update mstaddress set addressline1=?,addressline2=?,addressline3=?,addressline4=?,landmark=?,citycode=?,state=?,country=?,pincode=?,actiondate=now(),actionuserid=1 where address_id='"+addtype+"'");
              ptst2.setString(1, addl1);
                ptst2.setString(2, addl2);
                if(addl3.equals("null")){
                    ptst2.setNull(3, Types.VARCHAR);
                }
                else{
                    ptst2.setString(3, addl3);
                }
                if(addl4.equals("null")){
                    ptst2.setNull(4, Types.VARCHAR);
                }
                else{
                    ptst2.setString(4, addl4);
                }
                if(landmark.equals("null")){
                    ptst2.setNull(5, Types.VARCHAR);
                }
                else{
                    ptst2.setString(5, landmark);
                }
                ptst2.setString(6, city);
                ptst2.setString(7, state);
                ptst2.setString(8, country);
                if(pincode.equals("null")){
                    ptst2.setNull(9, Types.INTEGER);
                }
                else{
                ptst2.setString(9, pincode);
                }
                ptst1.executeUpdate();
                ptst2.executeUpdate();
                out.println("<script type=\"text/javascript\">");            
                out.println("alert('"+trptName+" Updated!');");
                out.println("location='trptlookup.jsp';");
                out.println("</script>");
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

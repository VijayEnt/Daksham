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
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Parth
 */
public class codereg extends HttpServlet {

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
            out.println("<title>Servlet codereg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet codereg at " + request.getContextPath() + "</h1>");
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
        Connection connect = com.daksham.connection.connection.setConnection();
            if(request.getParameter("slook")!=null){
                response.sendRedirect("codelookup.jsp");
                    }
            else if(request.getParameter("ssave")!=null){            
            if(connect == null){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Please Check Database Connection!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            }
            else
            {
            try{               
            String codeid=request.getParameter("cid");
            String codename=request.getParameter("cname");
            String codekey=request.getParameter("ckey");
            String codeval =request.getParameter("cval");
            String codeseq=request.getParameter("cseq");
            if(codeid.equals("")){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Code-ID could not be blank!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            }
            else if(codename.equals("")){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Code-Name could not be blank!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            }
            else if(codekey.equals("")){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Code-Key value could not be blank!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            }
            else if(codeval.equals("")){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Code-Value could not be blank!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");  
            }
            else if(codeseq.equals("")){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Code-Sequence could not be blank!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            }
            else{
            PreparedStatement ps = connect.prepareStatement("insert into mstcoderegister (Codename,CodeID,CodeKey,CodeValue,CodeSeqNo,CreationDate,ActionDate,ActionUserID) values (?,?,?,?,?,now(),now(),'1')");
            ps.setString(1, codename);
            ps.setString(2, codeid);
            ps.setString(3, codekey);
            ps.setString(4, codeval);
            ps.setString(5, codeseq);
            ps.executeUpdate();            
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Successfully enrolled with value "+codeval+"!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            ps.close();
        }
    }
//        catch(SQLException  ex){
//            out.println("<script type=\"text/javascript\">");
//            out.println("alert('"+ex+"');");
//            out.println("location='Codereg.jsp';");
//            out.println("</script>"); 
//        }
        catch ( Exception e){
            e.printStackTrace(out);
//            out.println("<script type=\"text/javascript\">");
//            out.println("alert('Error "+e.printStackTrace(out)+"!');");
//            out.println("location='Codereg.jsp';");
//            out.println("</script>"); 
        }
            
    }
}
            else if(request.getParameter("supdate")!=null){
                try{
            String recid=request.getParameter("frecid");
            String codeid=request.getParameter("cid");
            String codename=request.getParameter("cname");
            String codekey=request.getParameter("ckey");
            String codeval =request.getParameter("cval");
            String codeseq=request.getParameter("cseq");
            if(codeid.equals("")){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Code-ID could not be blank!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            }
            else if(codename.equals("")){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Code-Name could not be blank!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            }
            else if(codekey.equals("")){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Code-Key value could not be blank!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            }
            else if(codeval.equals("")){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Code-Value could not be blank!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");  
            }
            else if(codeseq.equals("")){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Code-Sequence could not be blank!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            }
                    else{
            PreparedStatement ptst = connect.prepareStatement("update mstcoderegister set codename='"+codename+"',codeid='"+codeid+"',codekey='"+codekey+"',codevalue='"+codeval+"',codeseqno='"+codeseq+"',actionDate=now(),actionUserID=1 where recid='"+recid+"'");
            ptst.executeUpdate();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Code Information Updated!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
                }
            }
                catch(Exception ex){
                    ex.printStackTrace(out);
                }
    }
            connect.close();
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daksham.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.Key;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sun.misc.BASE64Encoder;

/**
 *
 * @author Parth
 */
public class register extends HttpServlet {

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
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
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
    private static Key generatekKey() throws Exception{
        Key key = new SecretKeySpec(keyValue, algorithm);
        return key;
    }
    private static final String algorithm = "AES";
    private static final byte[] keyValue= new byte[] {'A','l','p','h','a','n','u','m','e','r','i','c','p','a','s','s'};
    
    public static String encrypt(String input) throws Exception{
        Key key = generatekKey();
        Cipher c = Cipher.getInstance(algorithm);
        c.init(Cipher.ENCRYPT_MODE, key);
        byte[] encVal=c.doFinal(input.getBytes());
        String encryptedValue = new BASE64Encoder().encode(encVal);
        return encryptedValue;
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            response.setContentType("text/html");
            PrintWriter out=response.getWriter();
            Connection connection = com.daksham.connection.connection.setConnection();
            if(connection==null){
            out.println("<script type=\"text/javascript\">");            
            out.println("alert('Please Check Database Connection!');");
            out.println("location='Codereg.jsp';");
            out.println("</script>");
            }
            else{
                if(request.getParameter("ssave")!=null){
                    try{
                        String uname=request.getParameter("uname");
                        String pass = request.getParameter("pass");
                        String cno = request.getParameter("cno");
                        String email = request.getParameter("email");
                        String fname = request.getParameter("fname");
                        String lname = request.getParameter("lname");
                        String addtype = request.getParameter("addtype");
                        String addl1= request.getParameter("add1");
                        String addl2 = request.getParameter("add2");//allow null
                        String addl3 = request.getParameter("add3");//allow null
                        String addl4 = request.getParameter("add4");//allow null
                        String city = request.getParameter("city");
                        String state = request.getParameter("state");
                        String country = request.getParameter("country");
                        String landmark = request.getParameter("landmark");//allow null
                        String pincode = request.getParameter("pincode");//allow null
                        String party = request.getParameter("party");//allow null
                        String read=request.getParameter("readonly");
                        String secq = request.getParameter("secq");
                        String secr = request.getParameter("response");
                        StringBuffer sb = new StringBuffer();
                        String input = pass;
                        String encypass=encrypt(input);
                        
                        if(uname.equals("")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Username should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
                        else if(pass.equals("")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Password should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
                        else if(cno.equals("")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Contact Number should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
                        else if(email.equals("")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Email should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
                        else if(fname.equals("")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('First Name should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
                        else if(lname.equals("")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Last Name should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
//                        else if(addtype.equals("-1")){
//                            out.println("<script type=\"text/javascript\">");            
//                            out.println("alert('Address should not be blank!');");
//                            out.println("location='Registration.jsp';");
//                            out.println("</script>");
//                        }
//                        else if(addl1.equals("")){
//                            out.println("<script type=\"text/javascript\">");            
//                            out.println("alert('Address should not be blank!');");
//                            out.println("location='Registration.jsp';");
//                            out.println("</script>");
//                        }
//                        else if(city.equals("-1")){
//                            out.println("<script type=\"text/javascript\">");            
//                            out.println("alert('City should not be blank!');");
//                            out.println("location='Registration.jsp';");
//                            out.println("</script>");
//                        }
//                        else if(state.equals("-1")){
//                            out.println("<script type=\"text/javascript\">");            
//                            out.println("alert('State should not be blank!');");
//                            out.println("location='Registration.jsp';");
//                            out.println("</script>");
//                        }
//                        else if(country.equals("-1")){
//                            out.println("<script type=\"text/javascript\">");            
//                            out.println("alert('Country should not be blank!');");
//                            out.println("location='Registration.jsp';");
//                            out.println("</script>");
//                        }
                        else if(secq.equals("-1")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Security Question should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
                        else if(secr.equals("")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Security answere should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }                        
                        else{
                            PreparedStatement ptst1 = connection.prepareStatement("insert into mstaddress (addresstypecode,addressline1,addressline2,addressline3,addressline4,landmark,citycode,state,country,pincode,creationDate,ActionDate,actionUserID) values(?,?,?,?,?,?,?,?,?,?,now(),now(),1);");
                            PreparedStatement ptst2 = connection.prepareStatement("insert into mstuser (addressID,userName,fName,lNamel,userkeyvalue,emailID,mobileNo,partyID,secretQuestionID,secretQuestionResponse,creationDate,actionDate,actionUserID,isReadyOnlyUser) select address_id ,?,?,?,?,?,?,?,?,?,now(),now(),1,? from mstaddress order by address_id DESC LIMIT 1");
                            PreparedStatement ptst3 = connection.prepareStatement("insert into mstlogin (userID,loginID,password,lastLogin,creationDate,actionDate,actionUserID) select userID,userName,?,now(),now(),now(),1 from mstuser order by userID desc limit 1");
                            ptst1.setString(1, addtype);
                            ptst1.setString(2, addl1);
                            ptst1.setString(3, addl2);
                            ptst1.setString(4, addl3);
                            ptst1.setString(5, addl4);
                            ptst1.setString(6, landmark);
                            ptst1.setString(7, city);
                            ptst1.setString(8, state);
                            ptst1.setString(9, country);
                            ptst1.setString(10, pincode);
                            //ptst1.setString(11, cno);
                            ptst2.setString(1, uname);
                            ptst2.setString(2, fname);
                            ptst2.setString(3, lname);
                            ptst2.setString(4, pass);
                            ptst2.setString(5, email);
                            ptst2.setString(6, cno);
                            ptst2.setString(7, party);
                            ptst2.setString(8, secq);
                            ptst2.setString(9, secr);
                            ptst2.setString(10, read);
                            ptst3.setString(1, encypass);
                            if(addtype.equals("-1")){
                            PreparedStatement ptst4 = connection.prepareStatement("insert into mstuser (addressID,userName,fName,lNamel,userkeyvalue,emailID,mobileNo,partyID,secretQuestionID,secretQuestionResponse,creationDate,actionDate,actionUserID,isReadyOnlyUser) values('"+addtype+"',?,?,?,?,?,?,?,?,?,now(),now(),1,?)");
                            ptst4.setString(1, uname);
                            ptst4.setString(2, fname);
                            ptst4.setString(3, lname);
                            ptst4.setString(4, pass);
                            ptst4.setString(5, email);
                            ptst4.setString(6, cno);
                            ptst4.setString(7, party);
                            ptst4.setString(8, secq);
                            ptst4.setString(9, secr);
                            ptst4.setString(10, read);
                            ptst4.executeUpdate();
                            ptst3.executeUpdate();
                            }
                            else
                            {
                             if(addtype.equals("-1")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Address should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
                        else if(addl1.equals("")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Address should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
                        else if(city.equals("-1")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('City should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
                        else if(state.equals("-1")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('State should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }
                        else if(country.equals("-1")){
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('Country should not be blank!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                        }  
                        else{
                            ptst1.executeUpdate();
                            ptst2.executeUpdate();
                            ptst3.executeUpdate();
                        }
                            }
                            out.println("<script type=\"text/javascript\">");            
                            out.println("alert('"+uname+" Enrolled!');");
                            out.println("location='Registration.jsp';");
                            out.println("</script>");
                            
                        }
                    }
                    catch(Exception ex){
                        ex.printStackTrace(out);
                    }
                }
                else if(request.getParameter("btndeactive")!=null){
                    try
                    {
                    String uid = request.getParameter("dname");
                    String uname = request.getParameter("gname");
                    PreparedStatement psts1 = connection.prepareStatement("Update mstuser set isActive = 'N',actionDate=now(),actionUserID=1 where userid='"+uid+"'");
                    PreparedStatement psts2 = connection.prepareStatement("Update mstlogin set isActive = 'N',actionDate=now(),actionUserID=1 where userid='"+uid+"'");
                    psts1.executeUpdate();
                    psts2.executeUpdate();
                    out.println("<script type=\"text/javascript\">");            
                    out.println("alert('"+uname+" Deactivated!');");
                    out.println("location='userlookup.jsp';");
                    out.println("</script>");
                }
                    catch(SQLException ex){
                        ex.printStackTrace(out);
                    }
                }
                else if(request.getParameter("btnactive")!=null){
                    try
                    {
                    String uid = request.getParameter("dname");
                    String uname = request.getParameter("gname");
                    PreparedStatement psts1 = connection.prepareStatement("Update mstuser set isActive = 'Y',actionDate=now(),actionUserID=1 where userid='"+uid+"'");
                    PreparedStatement psts2 = connection.prepareStatement("Update mstlogin set isActive = 'Y',actionDate=now(),actionUserID=1 where userid='"+uid+"'");
                    psts1.executeUpdate();
                    psts2.executeUpdate();
                    out.println("<script type=\"text/javascript\">");            
                    out.println("alert('"+uname+" Activated!');");
                    out.println("location='userlookup.jsp';");
                    out.println("</script>");
                }
                    catch(SQLException ex){
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

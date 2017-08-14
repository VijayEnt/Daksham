/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.daksham.connection;

import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Connection;

/**
 *
 * @author Parth
 */
public class connection {
    public static Connection setConnection(){
        Connection connect = null;
        String url="jdbc:mysql://localhost:3306/dfs";
        String username="root";
        String pass="12345";
        try{
            try{
                Class.forName("com.mysql.jdbc.Driver");
            }
            catch(ClassNotFoundException ce){
                ce.printStackTrace();
                System.err.println("Connection Failed");
            }
            connect=DriverManager.getConnection(url,username,pass);
            System.out.println("Loading Connection please wait "+connect);
        }
        catch (SQLException ex){
//            ex.printStackTrace();
            System.out.println("<script type=\"text/javascript\">");
            System.out.println("alert('"+ex.getSQLState()+"!');");
            System.out.println("location='Codereg.jsp';");
            System.out.println("</script>"); 
        }
        catch(Exception e){
            System.out.println("<script type=\"text/javascript\">");
            System.out.println("alert('"+e.getMessage()+"!');");
            System.out.println("location='Codereg.jsp';");
            System.out.println("</script>"); 
        }
        return connect;
    }    
}

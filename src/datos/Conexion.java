/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package datos;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author auyon.j6356
 */
public class Conexion {
    
    
    //com.mysql.jdbc.Driver       
    //Conexion Local
    //private static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    //private static String JDBC_URL = "jdbc:mysql://localhost/time_tracker?useSSL=false";
    //private static String JDBC_USER = "root";
    //private static String JDBC_PASS = "";
    //private static Driver driver = null;
    
    //com.mysql.jdbc.Driver 
    //Conexion with Host
    private static String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static String JDBC_URL = "jdbc:mysql://remotemysql.com/YRXNrAMZ1V?useSSL=false";
    private static String JDBC_USER = "YRXNrAMZ1V";
    private static String JDBC_PASS = "VPaHDPZQFH";
    private static Driver driver = null;
    
        
    public static synchronized Connection getConnection() throws SQLException{
         
                if(driver == null){
                    try {
                            Class jdbcDriverClass = Class.forName(JDBC_DRIVER);
                            
                            driver = (Driver) jdbcDriverClass.newInstance();
                            DriverManager.registerDriver(driver);
                        } catch (Exception e){
                            System.out.println("Fallo en cargar el driver JDBC");
                            e.printStackTrace();

                        }

                    } //End If
                    return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASS);

                    //**** Note that now instead of closing the conexions here, we will create a separate method "conexion"
                    //which will close all existinig conexions, so this class will only served to open the conexions


             }//End synchronized getConnection
    
    
    
             public static void close(ResultSet rs){
                   
                 try{
                     if(rs != null){
                         rs.close();
                     
                     }
                 
                 }catch(SQLException sqle){
                     sqle.printStackTrace();
                 }
             
             }
    
             
             
           public static void close(PreparedStatement stmt){
               try{
                   if(stmt != null){
                       stmt.close();
                   }
               
               
               }catch(SQLException sqle){
                   sqle.printStackTrace();
               }
           
           }
    
           public static void close(Connection conn){
               try{
                   if(conn != null){
                       conn.close();
                   }
               
               }catch(SQLException sqle){
                   sqle.printStackTrace();
               
               }
  
           }

} //End of Class Conexion
    
    
    


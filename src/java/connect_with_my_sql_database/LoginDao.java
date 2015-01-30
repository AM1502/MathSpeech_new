/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect_with_my_sql_database;

import java.sql.Connection;  
import java.sql.DriverManager;  
import java.sql.PreparedStatement;  
import java.sql.ResultSet;  
import java.sql.SQLException;  

public class LoginDao {
    
        public static boolean validate(String name, String pass) {          
            boolean status = false;  
            Connection conn = null;  
            PreparedStatement pst = null;  
            ResultSet rs = null;  
      
            String url = "jdbc:mysql://localhost:3306/";  
            String dbName = "mathcollection";  
            String driver = "com.mysql.jdbc.Driver";  
            String Username = "parpanag";  
            String Password = "%pa16016";  
            try {  
                Class.forName(driver).newInstance();  
                conn = DriverManager  
                        .getConnection(url + dbName, Username, Password);  
      
                pst = conn  
                        .prepareStatement("select * from users_info where Username=? and Password=?");  
                pst.setString(1, name);  
                pst.setString(2, pass);  
      
                rs = pst.executeQuery();  
                status = rs.next();  
      
            } catch (Exception e) {  
                System.out.println(e);  
            } 
            finally {  
                if (conn != null) {  
                    try {  
                        conn.close();  
                    } catch (SQLException e) {  
                        e.printStackTrace();  
                    }  
                }  
                if (pst != null) {  
                    try {  
                        pst.close();  
                    } catch (SQLException e) {  
                        e.printStackTrace();  
                    }  
                }  
                if (rs != null) {  
                    try {  
                        rs.close();  
                    } catch (SQLException e) {  
                        e.printStackTrace();  
                    }  
                }  
            }  
            return status;  
        }  
    }  


    


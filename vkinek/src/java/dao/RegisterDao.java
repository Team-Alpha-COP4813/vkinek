/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.SQLException;
import data.UserInfo;


public class RegisterDao {
    
  public String memberSignup(UserInfo registerBean) //create authorizeRegister()function
    {
        String firstname=registerBean.getFirst();
        String lastname=registerBean.getLast();
        String username=registerBean.getUser();  //get all value through registerBean object and store in temporary variable
        String password=registerBean.getPass();
        String email=registerBean.getEmail();
        
        String url="jdbc:mysql://localhost:3306/login"; //database connection url string
        String uname="root"; //database username
        String pass="password"; //database password
        
        
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver"); //load driver
            Connection con=DriverManager.getConnection(url,uname,pass); //create connection
           
            PreparedStatement pstmt=null; //create statement
            
            pstmt=con.prepareStatement("insert into user(firstname,lastname,username,password,email) values(?,?,?,?,?)"); //sql insert query
            pstmt.setString(1,firstname);
            pstmt.setString(2,lastname);
            pstmt.setString(3,username);
            pstmt.setString(4,password); 
            pstmt.setString(5, email);
            int i = pstmt.executeUpdate(); //execute query
             
            if(i > 0)
            {
                return "SUCCESS";
            }
            
            pstmt.close(); //close statement
            
            con.close(); //close connection
           
             //if valid return string "SUCCESS REGISTER" 

        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
            return "FAIL REGISTER"; //if invalid return string "FAIL REGISTER"
    }

  
}

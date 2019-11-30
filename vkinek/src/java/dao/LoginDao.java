/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import data.LoginInfo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {
    
    public String memberLogin(LoginInfo loginInfo) //create authorizeLogin()function
    {
        String username=loginInfo.getUser(); //get username value through loginBean object and store in temporary variable "username"
        String password=loginInfo.getPass(); //get password value through loginBean object and store in temporary variable "password"
        String firstname=loginInfo.getFirst(); //get username value through loginBean object and store in temporary variable "username"
        String lastname=loginInfo.getLast();
        String email=loginInfo.getEmail();
        
        String dbusername="";  //create two variable for use next process
        String dbpassword="";
        String dbfirstname="";
        String dblastname="";
        String dbemail=""; 
        
        String url="jdbc:mysql://localhost:3306/vKinek"; //database connection url string
        String uname="root"; //database username
        String pass="password"; //database password
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver"); //load driver
            Connection con=DriverManager.getConnection(url,uname,pass); //create connection
            PreparedStatement pstmt=null; //create statement
            
            pstmt=con.prepareStatement("select * from users  where username=? and password=?"); //sql select query 
            pstmt.setString(1,username);
            pstmt.setString(2,password);
             
            ResultSet rs=pstmt.executeQuery(); //execute query and set in Resultset object rs.
             
           
            while(rs.next())
            {   
                dbusername=rs.getString("username");   //fetchable database record username and password store in this two variable dbusername,dbpassword above created 
                dbpassword=rs.getString("password"); 
                
                
                loginInfo.setFirst(dbfirstname);
                loginInfo.setLast(dblastname);
               
                
                
                
                if(username.equals(dbusername) && password.equals(dbpassword))  //apply if condition check for fetchable database username and password are match for user input side type in textbox
                {
                    return "SUCCESS"; //if valid condition return string "SUCCESS LOGIN" 
                }
            } 
           
            pstmt.close(); //close statement
            
            con.close(); //close connection
            
             }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return "WRONG USERNAME AND PASSWORD"; //if invalid condition return string "WRONG USERNAME AND PASSWORD"
    }

   
}

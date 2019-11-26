/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import data.UserInfo;
import dao.RegisterDao;

/**
 *
 * @author Adam
 */
public class Controller extends HttpServlet {
  
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
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
        
         
         
       if(request.getParameter("submitButton")!=null) //check button click event not null from register.jsp page button
        {
            String first=request.getParameter("first");
            String last=request.getParameter("last");
            String user=request.getParameter("user");  //get all textbox name from register.jsp page
            String pass=request.getParameter("pass");
            String email=request.getParameter("email");
            
            UserInfo registerBean=new UserInfo(); //this class contain  seeting up all received values from register.jsp page to setter and getter method for application require effectively
            request.getSession().setAttribute("userData", registerBean);
            
            registerBean.setFirst(first);
            registerBean.setLast(last);
            registerBean.setUser(user);  //set the all value through registerBean object
            registerBean.setPass(pass);
            registerBean.setEmail(email);
            
            RegisterDao registerdao=new RegisterDao(); //this class contain main logic to perform function calling and database operation
            
            String registerValidate=registerdao.memberSignup(registerBean); //send registerBean object values into authorizeRegister() function in RegisterDao class
            
            if(registerValidate.equals("SUCCESS")) //check calling authorizeRegister() function receive "SUCCESS REGISTER" string message after redirect to index.jsp page
            {
                request.setAttribute("RegiseterSuccessMsg",registerValidate); //apply register successfully message "RegiseterSuccessMsg"
                RequestDispatcher rd=request.getRequestDispatcher("confirm.jsp"); //redirect to index.jsp page
                rd.forward(request, response);
            }
             else
            {
                request.setAttribute("RegisterErrorMsg",registerValidate); // apply register error message "RegiseterErrorMsg"
                RequestDispatcher rd=request.getRequestDispatcher("signup.jsp"); //show error same page register.jsp page
                rd.include(request, response);
            }
        }
    }
   
}

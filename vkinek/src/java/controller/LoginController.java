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
import data.LoginInfo;
import dao.LoginDao;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Adam
 */
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

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
        
       if(request.getParameter("loginButton")!=null) //check button click event not null from login.jsp page button
        {
            String username=request.getParameter("username"); //get textbox name "txt_username"
            String password=request.getParameter("password"); //get textbox name "txt_password"
            
            LoginInfo loginBean=new LoginInfo(); //this class contain seeting up all received values from index.jsp page to setter and getter method for application require effectively 
            request.getSession().setAttribute("userData", loginBean);
            
            
            loginBean.setUser(username); //set username through loginBean object
            loginBean.setPass(password); //set password through loginBean object
            
            LoginDao loginDao=new LoginDao(); //this class contain main logic to perform function calling and database operation
            
            String authorize=loginDao.memberLogin(loginBean); //send loginBean object values into authorizeLogin() function in LoginDao class
            
            if(authorize.equals("SUCCESS")) //check calling authorizeLogin() function receive string "SUCCESS LOGIN" message after continue process
            {
                HttpSession session=request.getSession(); //session is created
                session.setAttribute("login",loginBean.getUser()); //session name is "login" and  store username in "getUsername()" get through loginBean object
                RequestDispatcher rd=request.getRequestDispatcher("index2.jsp"); //redirect to welcome.jsp page
                rd.forward(request, response);
            }
            else
            {
                request.setAttribute("WrongLoginMsg",authorize); //wrong login error message is "WrongLoginMsg"
                RequestDispatcher rd=request.getRequestDispatcher("login.jsp"); //show error same index.jsp page
                rd.include(request, response);
            }
        }
    }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Account;
import model.Customer;

/**
 *
 * @author NITRO
 */
public class LoginControl extends HttpServlet {

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
        //b1: get user,pass from cookie
        Cookie arr[] =request.getCookies();
        if(arr!=null){
            for(Cookie o:arr){
            if(o.getName().equals("userC")){
                request.setAttribute("username", o.getValue());
            }
            if(o.getName().equals("passC")){
                request.setAttribute("password", o.getValue());
            }
        }
        }
        request.getRequestDispatcher("view/account.jsp").forward(request, response);
                    
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
        String user=request.getParameter("user");
        String pass=request.getParameter("password");
        String remember=request.getParameter("remember");
        AccountDAO adb=new AccountDAO();
        Account a=adb.login(user, pass);
        
        if(a==null){
            request.setAttribute("error", "Username or password invalid!");
            request.getRequestDispatcher("view/account.jsp").forward(request, response);
        }else{
            HttpSession session=request.getSession();
            session.setAttribute("acc", a);
            session.setMaxInactiveInterval(60*60*24);
            Cookie u=new Cookie("userC", user);
            Cookie p=new Cookie("passC", pass );
            u.setMaxAge(60*60*24);
            if(remember!=null){
                p.setMaxAge(60*60*24);
            }else{
                p.setMaxAge(0);
            }
            
            response.addCookie(u);//luu u va p len chrome
            response.addCookie(p);
            response.sendRedirect("listproduct");
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

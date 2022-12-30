/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Card;

import dal.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Cart;
import model.Item;
import model.Product;

/**
 *
 * @author NITRO
 */
public class processCart extends HttpServlet {

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
            out.println("<title>Servlet processCart</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet processCart at " + request.getContextPath() + "</h1>");
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
        HttpSession session=request.getSession(true);
        Cart cart=null;
        Object o=session.getAttribute("cart");
        if(o!=null){
            cart=(Cart)o;
        }else{
            cart= new Cart();
        }
        
        String tnum=request.getParameter("num").trim();
        String tid=request.getParameter("id");
        int id,num;
        String size=request.getParameter("size");
        try {
            id=Integer.parseInt(tid);
            num=Integer.parseInt(tnum);
            if((num==-1)&&(cart.getQuanTiTyById(id)<=1)){
                cart.removeItem(id);
            }else{
                ProductDAO pdao = new ProductDAO();
                Product product = pdao.getProductByID(tid);
                Item item = new Item(product, num, size);
                cart.addItems(item);
            }
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
        
        List<Item> list = cart.getItems();
        session.setAttribute("cart", cart);
        session.setAttribute("total", cart.getTotalMoney());
        session.setAttribute("size", list.size());
        request.getRequestDispatcher("view/checkout.jsp").forward(request, response);
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
        processRequest(request, response);
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import model.Account;
import model.Cart;
import model.Customer;
import model.Item;

/**
 *
 * @author NITRO
 */
public class OrdersDAO extends DBContext{
    public void addOrder(Account u, Cart cart) {
        LocalDate curDate = java.time.LocalDate.now();
        String date = curDate.toString();
        try{
            //add vào bảng Order
            String sql="insert into [orders] values(?,?,?)";
            PreparedStatement st=connection.prepareStatement(sql);
            st.setInt(1, u.getCustomerid());
            st.setString(2, date);
            st.setDouble(3, cart.getTotalMoney());
            st.executeUpdate();
            
            //lấy ra id của Order vừa add
            String sql1="select top 1 customerid from [Orders] order by customerid desc";
            PreparedStatement st1=connection.prepareStatement(sql1);
            ResultSet rs=st1.executeQuery();
            
            //add vào bảng OrderDetails
            if(rs.next()){
                int oid=rs.getInt(1);
                for(Item i:cart.getItems()){
                String sql2="insert into [OrderDetails] values(?,?,?,?,?)";
                PreparedStatement st2=connection.prepareStatement(sql2);
                st2.setInt(1, oid);
                st2.setInt(2, Integer.parseInt(i.getProduct().getId()));
                st2.setInt(3, i.getQuantity());
                st2.setDouble(4, i.getProduct().getPrice());
                st2.setString(5, i.getSize());
                st2.executeUpdate();
            }
            }
            //update so luong trong bang Product sau khi ban
            String sql3 = "update Product set quantity = quantity - ? "
                        + "where id = ?";
            PreparedStatement st3=connection.prepareStatement(sql3);
            for(Item i:cart.getItems()){
                st3.setInt(1, i.getQuantity());
                st3.setInt(2, Integer.parseInt(i.getProduct().getId()));
                st3.executeUpdate();
            }
        }catch(SQLException e){
            System.out.println(e);
        }
    }

}

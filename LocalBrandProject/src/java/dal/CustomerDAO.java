/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Customer;

/**
 *
 * @author NITRO
 */
public class CustomerDAO extends DBContext{
    
    public Customer getAccount(String user,String pass){
        String sql="select * from Customer where username=? and password=?";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs= st.executeQuery();
            if(rs.next()){
                return new Customer(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4),
                        rs.getDouble(5), rs.getString(6), rs.getString(7));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}

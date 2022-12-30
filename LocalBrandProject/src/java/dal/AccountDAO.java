/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import dal.DBContext;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Account;

/**
 *
 * @author NITRO
 */
public class AccountDAO extends DBContext{
    public Account login(String user,String pass){
        String sql="select * from Accounts where username=? and password =?";
        try {
            PreparedStatement st= connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs=st.executeQuery();
            if(rs.next()){
                return  new Account(rs.getInt("CustomerID"),rs.getString("username"), rs.getString("password"), rs.getInt("isAdmin"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;  
    }
    
    //check Account da ton tai hay chua
    public Account checkAccountExist(String user){
        String sql="select * from Accounts where username=? ";
        try {
            PreparedStatement st= connection.prepareStatement(sql);
            st.setString(1, user);
            ResultSet rs=st.executeQuery();
            if(rs.next()){
                return  new Account(rs.getInt("CustomerID"),rs.getString("username"), rs.getString("password"), rs.getInt("isAdmin"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;  
    }
    
    //ham sign up
    public void signup(String user,String pass){
        String sql="insert into Accounts values (?,?,0)";
        try {
            PreparedStatement st= connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public List<Account> displayAcc(){
        String sql="select * from Accounts ";
        List<Account> list=new ArrayList<>();
        try {
            PreparedStatement st= connection.prepareStatement(sql);
            
            ResultSet rs=st.executeQuery();
            while(rs.next()){
                list.add(new Account(rs.getInt("CustomerID"),rs.getString("username"), rs.getString("password"), rs.getInt("isAdmin")));  
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;  
    }
    
    public void addAdmin(int id){
        String sql = "update accounts set isAdmin=1 where customerid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public void updatePassword(String pass,int id){
        String sql="update accounts set password=? where customerid=? ";
        try {
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, pass);
            st.setInt(2, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}

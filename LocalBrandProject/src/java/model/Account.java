/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author NITRO
 */
public class Account {
    private int customerid;
    private String username;
    private String password;
    private int isAdmin;

    public Account() {
    }

    public Account(int customerid, String username, String password, int isAdmin) {
        this.customerid = customerid;
        this.username = username;
        this.password = password;
        this.isAdmin = isAdmin;
    }

    public int getCustomerid() {
        return customerid;
    }

    public void setCustomerid(int customerid) {
        this.customerid = customerid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getIsAdmin() {
        return isAdmin;
    }

    public void setIsAdmin(int isAdmin) {
        this.isAdmin = isAdmin;
    }

    @Override
    public String toString() {
        return "Account{" + "customerid=" + customerid + ", username=" + username + ", password=" + password + ", isAdmin=" + isAdmin + '}';
    }

    
    
    
}

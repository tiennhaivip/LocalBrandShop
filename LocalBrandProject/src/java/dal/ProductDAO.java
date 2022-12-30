/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import model.Product;

/**
 *
 * @author NITRO
 */
public class ProductDAO extends DBContext {

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "select p.id,p.name,p.cat_id,p.image, "
                + "p.price,p.quantity,p.status,p.adddate,c.id, c.name as BrandName,c.describe from product p inner join categories c "
                + " on p.cat_id=c.id";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setCat_id(rs.getString("cat_id"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setStatus(rs.getString("status"));
                p.setAdddate(rs.getString("adddate"));
                Category c = new Category(rs.getString("id"), rs.getString("BrandName"), rs.getString("describe"));
                p.setCate(c);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getByCatID(String cid) {
        List<Product> list = new ArrayList<>();
        String sql = "select p.id,p.name,p.cat_id,p.image, "
                + " p.price,p.quantity,p.status,p.adddate,c.id as cid, c.name as BrandName,c.describe from product p inner join categories c "
                + " on p.cat_id=c.id where p.cat_id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setCat_id(rs.getString("cat_id"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setStatus(rs.getString("status"));
                p.setAdddate(rs.getString("adddate"));
                Category c = new Category(rs.getString("id"), rs.getString("BrandName"), rs.getString("describe"));
                p.setCate(c);
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Product getProductByID(String id) {
        String sql = "select * from product as p inner join categories as c "
                + " on p.cat_ID = c.id where p.id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setCat_id(rs.getString("cat_id"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setStatus(rs.getString("status"));
                p.setAdddate(rs.getString("adddate"));
                Category c = new Category(rs.getString("id"), rs.getString("name"), rs.getString("describe"));
                p.setCate(c);
                return p;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public List<Product> searchByName(String text) {
        List<Product> list = new ArrayList<>();
        String sql = "select p.id,p.name,p.cat_id,p.image, "
                + " p.price,p.quantity,p.status,p.adddate,c.id as cid, c.name as BrandName,c.describe from product p inner join categories c "
                + " on p.cat_id=c.id where p.name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + text + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setCat_id(rs.getString("cat_id"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setStatus(rs.getString("status"));
                p.setAdddate(rs.getString("adddate"));
                Category c = new Category(rs.getString("id"), rs.getString("BrandName"), rs.getString("describe"));
                p.setCate(c);
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Product> getListByPage(List<Product> list, int start, int end) {
        List<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    //delete product
    public void deleteProduct(int pid) {
        String sql = "delete from product where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, pid);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //add product
    public void insertProduct(int id, String name, String cat_id, String image,
            int price, int quantity, String status, String date) {
        String sql = "insert into product values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.setString(2, name);
            st.setString(3, cat_id);
            st.setString(4, image);
            st.setInt(5, price);
            st.setInt(6, quantity);
            st.setString(7, status);
            st.setString(8, date);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //check su ton tai cua san pham
    public Product checkExistProduct(int id) {
        String sql = "select * from product where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setCat_id(rs.getString("cat_id"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setStatus(rs.getString("status"));
                p.setAdddate(rs.getString("adddate"));
                Category c = new Category(rs.getString("id"), rs.getString("name"), rs.getString("describe"));
                p.setCate(c);
                return p;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    //update product
    public void updateProduct(String name, String cat_id, String image,
            int price, int quantity, String status, String date, int id) {
        String sql = "update product set name=?,cat_id=?,image=?,price=?,quantity=?,status=?,adddate=? where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, cat_id);
            st.setString(3, image);
            st.setInt(4, price);
            st.setInt(5, quantity);
            st.setString(6, status);
            st.setString(7, date);
            st.setInt(8, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    //sap xep cac san pham tu cao den thap
    public List<Product> getHighToLow() {
        List<Product> list = new ArrayList();
        String sql = "select * from product order by price DESC";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setCat_id(rs.getString("cat_id"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setStatus(rs.getString("status"));
                p.setAdddate(rs.getString("adddate"));                            
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    
     //sap xep cac san pham tu thap den cao
    public List<Product> getLowToHigh() {
        List<Product> list = new ArrayList();
        String sql = "select * from product order by price ASC";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setCat_id(rs.getString("cat_id"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setStatus(rs.getString("status"));
                p.setAdddate(rs.getString("adddate"));                            
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    
    //lay ra san pham co gia cao nhat
    public List<Product> getProductHighest() {
        List<Product> list = new ArrayList();
        String sql = "select * from product where price = (select MAX(price) from product)";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setCat_id(rs.getString("cat_id"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setStatus(rs.getString("status"));
                p.setAdddate(rs.getString("adddate"));                            
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    
    //lay ra san pham co gia thap nhat
    public List<Product> getProductLowest() {
        List<Product> list = new ArrayList();
        String sql = "select * from product where price = (select MIN(price) from product)";
        try {

            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()) {
                Product p = new Product();
                p.setId(rs.getString("id"));
                p.setName(rs.getString("name"));
                p.setCat_id(rs.getString("cat_id"));
                p.setImage(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setStatus(rs.getString("status"));
                p.setAdddate(rs.getString("adddate"));                            
                list.add(p);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
}

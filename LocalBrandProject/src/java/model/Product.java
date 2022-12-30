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
public class Product {
    private String id,name,cat_id,image;
    private int price,quantity;
    private String status;
    private String adddate;
    Category cate;

    public Product() {
    }

    public Product(String id, String name, String cat_id, String image, int price, int quantity, String status, String adddate, Category cate) {
        this.id = id;
        this.name = name;
        this.cat_id = cat_id;
        this.image = image;
        this.price = price;
        this.quantity = quantity;
        this.status = status;
        this.adddate = adddate;
        this.cate = cate;
    }
    
    public Product(String id, String name, String cat_id, String image, int price, int quantity, String status, String adddate) {
        this.id = id;
        this.name = name;
        this.cat_id = cat_id;
        this.image = image;
        this.price = price;
        this.quantity = quantity;
        this.status = status;
        this.adddate = adddate;
    }
    
    

    

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getAdddate() {
        return adddate;
    }

    public void setAdddate(String adddate) {
        this.adddate = adddate;
    }

    public Category getCate() {
        return cate;
    }

    public void setCate(Category cate) {
        this.cate = cate;
    }

    public String getCat_id() {
        return cat_id;
    }

    public void setCat_id(String cat_id) {
        this.cat_id = cat_id;
    }
    
    
}

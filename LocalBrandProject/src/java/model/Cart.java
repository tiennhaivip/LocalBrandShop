/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author NITRO
 */
public class Cart {

    private List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public Cart(List<Item> items) {
        this.items = items;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    
    
    //Lấy ra sản 1 sản phầm theo id
    private Item getItemById(int id) {
        for (Item i : items) {
            if (Integer.parseInt(i.getProduct().getId()) == id) {
                return i;

            }
        }
        return null;
    }
    
    private Item checkItem(int id, String size) {
        for (Item i : items) {
            if (Integer.parseInt(i.getProduct().getId()) == id && i.getSize().equals(size)) {
                return i;
            }
        }
        return null;
    }
    
    
    //Lấy ra số lượng của sản phầm đó
    public int getQuanTiTyById(int id){
        return getItemById(id).getQuantity();
    }
    
    //thêm vào giỏ
    public void addItems(Item t){
        //có card rồi
        if(getItemById(Integer.parseInt(t.getProduct().getId())) != null || checkItem(Integer.parseInt(t.getProduct().getId()), t.getSize()) != null){
            Item i=getItemById(Integer.parseInt(t.getProduct().getId()));
            i.setQuantity(i.getQuantity()+t.getQuantity());
        }else{
            // chưa có
            items.add(t);
        }
        
    }
    
    //xóa sản phầm ra khỏi giỏ hàng
    public void removeItem(int id){
        if(getItemById(id) != null){
            items.remove(getItemById(id));
        }
    }
    
    //tổng tiền
    public double getTotalMoney(){
        double t=0;
        for(Item i:items){
            t+=i.getQuantity()*i.getProduct().getPrice();
        }
        return t;
    }
    
}

package dal;

import dal.DBContext;
import dal.DBContext;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CategoryDAO extends DBContext {

    public List<Category> getAll() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Categories";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while(rs.next()){
                Category c= new Category();
                c.setId(rs.getString("id"));
                c.setName(rs.getString("name"));
                c.setDescribe(rs.getString("describe"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public Category CategoryGetById(String id) {
        String sql = "select * from Categories where id=?";
        
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Category c= new Category();
                c.setId(rs.getString("id"));
                c.setName(rs.getString("name"));
                c.setDescribe(rs.getString("describe"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
//    public void insert(Category c){
//        String sql="insert into Categories values(?,?,?)";
//        try {
//            PreparedStatement st=connection.prepareStatement(sql);
//            st.setString(1, c.getId());
//            st.setString(2, c.getName());
//            st.setString(3, c.getDescribe());
//            st.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//    }
//    
//    public void delete(String id){
//        String sql="delete from categories where id = ?";
//        try {
//            PreparedStatement st=connection.prepareStatement(sql);
//            st.setString(1, id);
//            st.executeUpdate();
//        } catch (SQLException e) {
//            System.out.println(e);
//        }
//    }
//    
//    public void update(Category c){
//        String sql ="update categories set name=?,describe=? where id = ?";
//        try {
//            PreparedStatement st=connection.prepareStatement(sql);
//            st.setString(1, c.getName());
//            st.setString(2, c.getDescribe());
//            st.setString(3, c.getId());
//            st.executeUpdate();
//        }catch (SQLException e) {
//            System.out.println(e);
//        }
//    }
//    
//    public static void main(String[] args) {
//        CategoryDAO c=new CategoryDAO();
//        List<Category> list=c.getAll();
//        System.out.println(list.get(2).getName());
//    }
}

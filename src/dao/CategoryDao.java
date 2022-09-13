/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import model.Category;
import java.util.*;
import javax.swing.*;
import java.sql.*;

/**
 *
 * @author udaraekanayake96
 */
//save method trigger after click save button 
public class CategoryDao {
    public static void save(Category category)
    {
        String query ="insert into category (name) values ('"+category.getName()+"')";
        DbOperations.setDataOrDelete(query, "Category Added Succesfully");
    }
    
    public static ArrayList <Category> getAllRecords()
    {
        //display all category details in table
        ArrayList<Category> arrayList =new ArrayList<>();
        try{
            ResultSet rs =DbOperations.getData("select * from category");
            while(rs.next())
            {
                Category category =new Category();
                category.setId(rs.getInt("id"));
                category.setName(rs.getString("name"));
                arrayList.add(category);
            }
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return arrayList;
    }
    
    public static void delete(String id)
    {
        String query ="delete from category where id='"+id+"' ";
        DbOperations.setDataOrDelete(query,"Category deleted successfully !!!");
    }
}

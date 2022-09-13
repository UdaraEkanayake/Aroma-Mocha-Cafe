/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;
import model.User;
import javax.swing.*;
import java.sql.*;
import java.util.*;
/**
 *
 * @author udaraekanayake96
 */
public class UserDao {
    public static void save (User user)
    {
         String query = "insert into user(name,email,mobileNumber,address,password,securityQuestion,answer,status) Values ('"+user.getName()+"','"+user.getEmail()+"','"+user.getMobilenumber()+"','"+user.getAddress()+"','"+user.getPassword()+"','"+user.getSecurityQuestion()+"','"+user.getAnswer()+"','false')";
         DbOperations.setDataOrDelete(query,"Registered Successfully !!! Wait for Admin Approval !");
    }
    //log in button functionalities 
    public static User login(String email,String password)
    {
        User user =null ;
        try{
             ResultSet rs = DbOperations.getData("select * from user where email='"+email+"' and password='"+password+"' ");
             while(rs.next())
             {
                 user = new User();
                 user.setStatus(rs.getString("status"));
             }
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return user;
    }
    //get automatically security question after user input his or her email address
    public static User getSecurityQuestion(String email)
    {
        User user =null ;
        try
        {
            ResultSet rs = DbOperations.getData("select * from user where email = '"+email+"'  ");
            while(rs.next())
            {
                user = new User ();
                user.setSecurityQuestion(rs.getString("securityQuestion"));
                user.setAnswer(rs.getString("answer"));
            }
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return user;
    }
    
    public static void update(String email,String newPassword)
    {
        String query = "update user set password='"+newPassword+"' where email='"+email+"' ";
        DbOperations.setDataOrDelete(query,"Password Changed Successfully");
    }
    
    public static ArrayList<User> getAllRecords (String email)
    {
        ArrayList<User> arrayList = new ArrayList<>();
        try
        {
            ResultSet rs = DbOperations.getData("select * from user where email like '%"+email+"%'");
            while(rs.next())
            {
                User user = new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setEmail(rs.getNString("email"));
                user.setMobilenumber(rs.getString("mobileNumber"));
                user.setAddress(rs.getString("address"));
                user.setSecurityQuestion(rs.getString("securityQuestion"));
                user.setStatus(rs.getString("status"));
                arrayList.add(user);
            }
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return arrayList;
    }
    //change status of the user query
    public static void changeStatus(String email,String status)
    {
        String query = "update user set status = '"+status+"' where email ='"+email+"' ";
        DbOperations.setDataOrDelete(query,"Status changed successfully !!!");
    }
    
    public static void changePassword(String email,String oldPassword,String newPassword)
    {
        try{
            ResultSet rs = DbOperations.getData("select * from user where email='"+email+"' and password='"+oldPassword+"'");
            if(rs.next())
            {
                update(email,newPassword);
            }
            else
            {
                JOptionPane.showMessageDialog(null,"Old password is Wrong !!!");
            }
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
    }
    
    public static void changeSecurityQuestion(String email,String password,String securityQuestion,String answer)
    {
        try{
            ResultSet rs = DbOperations.getData("select * from user where email = '"+email+"' and password ='"+password+"'");
            if(rs.next())
            {
                update(email,securityQuestion,answer);
            }
            else
            {
                JOptionPane.showMessageDialog(null,"Password is wrong!!!");
            }
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
    }
    
    public static void update(String email,String securityQuestion,String answer)
    {
        String query = "update user set securityQuestion ='"+securityQuestion+"',answer='"+answer+"' where email='"+email+"'";
        DbOperations.setDataOrDelete(query,"Security question changed successfully !!!");
    }
}

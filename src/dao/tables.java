/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import javax.swing.*;

/**
 *
 * @author udaraekanayake96
 */
public class tables {

    public static void main(String[] args) {
        try {
            String userTable = "create table user(id int AUTO_INCREMENT primary key,name varchar(200),email varchar(200),mobileNumber varchar(10),address varchar(200),password varchar(20),securityQuestion varchar(200),answer varchar(200),status varchar(200),UNIQUE (email))";
            //DbOperations.setDataOrDelete(userTable, "User Table Created successfully");

            String adminDetails = "insert into user(name,email,mobileNumber,address,password,securityQuestion,answer,status) values('admin1','admin1@gmail.com','0111234567','No.12,Magampitiya road,Kaluthara','admin@123','My favourite food?','cake','true')";
            //DbOperations.setDataOrDelete(adminDetails, "Admin Details added successfully");

            String categoryTable = "create table category(id int AUTO_INCREMENT primary key,name varchar(200))";
            //DbOperations.setDataOrDelete(categoryTable, "Category table created successfully");

            String productTable = "create table product (id int AUTO_INCREMENT primary key ,name varchar(200),category varchar(200),price varchar(200))";
            //DbOperations.setDataOrDelete(productTable, "Product table created successfully");
            
            String billTable = "create table bill(id int primary key,name varchar(200),mobileNumber varchar (200),email varchar(200),date varchar(50),total varchar(200),createdBy varchar(200))";
            DbOperations.setDataOrDelete(billTable, "Bill table created successfully");
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, e);
        }
    }
}

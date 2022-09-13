/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import javax.swing.JOptionPane;
import java.sql.*;

/**
 *
 * @author udaraekanayake96
 */
public class DbOperations {
    public static void setDataOrDelete(String Query,String msg)
    {
        try{
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            st.executeUpdate(Query);
            if(!msg.equals(""))
                JOptionPane.showMessageDialog(null,msg);
            
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null , e ,"Message",JOptionPane.ERROR_MESSAGE);
        }
    }
    
    public static ResultSet getData(String query)
   {
        try {
            Connection con = ConnectionProvider.getCon();
            Statement st = con.createStatement();
            ResultSet rs=st.executeQuery(query);
            return rs;
            
        }
        catch(Exception e)
        {
            JOptionPane.showMessageDialog(null , e ,"Message",JOptionPane.ERROR_MESSAGE);
            return null;
        }
   }
}


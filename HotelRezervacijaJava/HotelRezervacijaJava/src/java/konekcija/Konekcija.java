/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package konekcija;

import java.sql.DriverManager;
import java.sql.Connection;

/**
 *
 * @author Bogdan
 */
public class Konekcija {
    
    public String dbUrl = "jdbc:mysql://localhost:3306/rezervacijahotelskihsoba";
    public String username = "root";
    public String pass ="";
    public Connection konekcija;
    public  Connection getKonekcija()
    {
          try
          {
              Class.forName("com.mysql.jdbc.Driver");
              konekcija = DriverManager.getConnection(dbUrl,username,pass);
          }
          catch(Exception e)
          {
              System.out.println("Greska: "+e);
          }
          
          return konekcija;
    }
      

}

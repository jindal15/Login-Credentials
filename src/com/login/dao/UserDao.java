package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {

	public boolean getData(String user,String password) throws Exception{
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost/sakhatech","sakha-lenovo-6","welcome");
		PreparedStatement ps=con.prepareStatement("Select * from user where username=? and password=?");
		ps.setString(1, user);
		ps.setString(2, password);
		ResultSet rs=ps.executeQuery();
		if(rs.next())
			return true;
		else
			return false;
		
	}
}

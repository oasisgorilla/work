package service;

import java.sql.Connection;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBService {
	// single-ton pattern: 
	// 객체1개만생성해서 지속적으로 서비스하자
	static DBService single = null;

	public static DBService getInstance() {
		//생성되지 않았으면 생성
		if (single == null)
			single = new DBService();
		//생성된 객체정보를 반환
		return single;
	}
	
	DataSource dataSource;
	
	private DBService() {
		
		try {
			
			//JNDI검색을 위한 클래스
			InitialContext ic = new InitialContext();
			Context ctx = (Context)ic.lookup("java:comp/env");
			//JNDI의 resource를 검색
			dataSource = (DataSource)ctx.lookup("jdbc/oracle_test");
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}//생성자
	
	public Connection getConnection() {
		//DB에 연결
		Connection conn = null;
		
		try {
			conn = dataSource.getConnection();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
}

package homework.common.util;

import java.sql.Connection;
import java.sql.DriverManager;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class DBUtil {
	///field
	///constructor
	DBUtil(){}
	///method
	public static Connection getConnection( String drverClassName,
											String url,
											String id,
											String passwd) {
		
		Connection con = null;
		try {
			Class.forName(drverClassName);
			con=DriverManager.getConnection(url,id,passwd);
		}catch(Exception e) {
			throw new RuntimeException("DB 접속시 오류 발생 : "+e);
		}
		return con;
	} //end of getConnection(4 String Param)
	
	public static Connection getConnection() {
		Connection con = null;
		try {
			Context initContext = new InitialContext();
			DataSource ds = (DataSource)initContext.lookup("java:/comp/env/jdbc/myora");
			con = ds.getConnection();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			con = getConnection("oracle.jdbc.driver.OracleDriver",
								"jdbc:oracle:thin:@127.0.0.1:1521:xe",
								"scott","tiger");
		}
		return con;
	}// end of getConnection()
	
}

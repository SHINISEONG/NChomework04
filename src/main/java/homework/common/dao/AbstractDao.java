package homework.common.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import homework.common.util.DBUtil;

public abstract class AbstractDao {
	///field
	///constructor
	public AbstractDao() {}
	///
	public Connection connect() {
		Connection con = null;
		try {
			con = DBUtil.getConnection();
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		return con;
	} //end of connect()
	
	
	public void close(Connection con, PreparedStatement pStmt, ResultSet rs) {
		if(rs != null) {
			try {
				rs.close();
			} catch(Exception ex) {
				ex.printStackTrace();
			}
		}
		this.close(con, pStmt);
	}// end of close(Connection, PStmt, ResultSet)
	
	public void close(Connection con, PreparedStatement pStmt) {
	
		if(pStmt != null) {
			try {
				pStmt.close();
			} catch(Exception ex) {
				ex.printStackTrace();
			}
		}
	
		if(con != null) {
			try {
				con.close();
			} catch(Exception ex) {
				ex.printStackTrace();
			}
		}
	}// end of close(Connection, PStmt)

}


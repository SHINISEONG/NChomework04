package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import homework.common.dao.AbstractDao;
import jw.common.pool.OracleConnectionPool;

public class UserDAO extends AbstractDao {
	/// field
	/// constructor
	public UserDAO() {
	}

	/// method
	public boolean addUser(UserVO userVO) {
		Connection con = null;
		PreparedStatement pStmt = null;
		boolean addUserResult = false;

		try {

			con = connect();

			pStmt = con.prepareStatement("INSERT INTO user_info\r\n" + "(\r\n" + "	user_name,\r\n" + "	sex,\r\n"
					+ "	birth_day,\r\n" + "	jobs,\r\n" + "	cell_num,\r\n" + "	addr\r\n" + ")\r\n" + "VALUES\r\n"
					+ "(\r\n" + "	?,\r\n" + "	?,\r\n" + "	?,\r\n" + "	?,\r\n" + "	?,\r\n" + "	?\r\n" + ")");
			pStmt.setString(1, userVO.getUserName());
			pStmt.setString(2, userVO.getSex());
			pStmt.setString(3, userVO.getBirthDay());
			pStmt.setString(4, userVO.getJobs());
			pStmt.setString(5, userVO.getCellNum());
			pStmt.setString(6, userVO.getAddr());

			if (pStmt.executeUpdate() == 1) {
				addUserResult = true;
			} else {
				System.out.println("Insert 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con, pStmt);
		}
		return addUserResult;
	}// end of addUser()

	public boolean findUser(String userName, UserVO userVO) {
		Connection con = null;
		PreparedStatement pStmt = null;
		ResultSet rs = null;
		boolean findUserResult = false;
		try {

			con = connect();

			pStmt = con.prepareStatement("SELECT * FROM user_info\r\n" + "WHERE\r\n" + "user_name=?");
			pStmt.setString(1, userName);

			rs = pStmt.executeQuery();

			if (rs.next()) {
				String sex = rs.getString("sex");
				String birthDay = rs.getString("birth_day");
				String jobs = rs.getString("jobs");
				String cellNum = rs.getString("cell_num");
				String addr = rs.getString("addr");
				userVO.setAllInfo(userName, sex, birthDay, jobs, cellNum, addr);
				findUserResult = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con,pStmt,rs);
		}
		return findUserResult;
	}// end of findUser()

	public boolean updateUser(UserVO userVO) {
		Connection con = null;
		PreparedStatement pStmt = null;
		boolean updateUserResult = false;
		System.out.println(userVO);
		try {

			con = connect();

			pStmt = con.prepareStatement(
					"UPDATE user_info SET ( user_name = ?, sex = ?, birth_day =?, jobs =?, cell_num=?, addr=? )");
			pStmt.setString(1, userVO.getUserName());
			pStmt.setString(2, userVO.getSex());
			pStmt.setString(3, userVO.getBirthDay());
			pStmt.setString(4, userVO.getJobs());
			pStmt.setString(5, userVO.getCellNum());
			pStmt.setString(6, userVO.getAddr());

			if (pStmt.executeUpdate() == 1) {
				updateUserResult = true;
			} else {
				System.out.println("UPDATE 실패");
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(con,pStmt);
		}
		return updateUserResult;
	}// end of updateUser()

}

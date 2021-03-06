package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import util.DBConn;
import vo.Board;
import vo.Member;

public class MemberDao {
   public List<Member> getMembers() {
      // 1. Connection 취득
      // 2. 문장(Statement) 생성
      // 3. Select >> 결과 집합(ReultSet)
      // >> RS 순회

      Connection conn = DBConn.getConnection();
      List<Member> list = new ArrayList<Member>();
      try {
         Statement stmt = conn.createStatement();
         ResultSet rs = stmt.executeQuery("SELECT ID, PWD, EMAIL, NAME FROM TBL_MEMBER ");

         while (rs.next()) {
            String id = rs.getString("id");
            String pwd = rs.getString("pwd");
            String email = rs.getString("email");
            String name = rs.getString("name");

            Member member = new Member(id, pwd, email, name);
            list.add(member);
         }

      } catch (SQLException e) {
         e.printStackTrace();
      }

      return list;
   }
   
   public boolean login(String id, String pwd) {
	   Connection conn = DBConn.getConnection();
	   boolean success = false;
	      List<Member> list = new ArrayList<Member>();
	      try {
	         Statement stmt = conn.createStatement();
	         ResultSet rs = stmt.executeQuery(
	        		 "SELECT ID, PWD, EMAIL, NAME FROM TBL_MEMBER "
	         		+ " WHERE ID='" + id + "' AND PWD = '" + pwd + "'");

	        success = rs.next();
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return success;
   }
   
   public void join(Member member) {
	   Connection conn = DBConn.getConnection();
	      try {
	         PreparedStatement pstmt = conn.prepareStatement("INSERT INTO TBL_MEMBER VALUES (?,?,?,?)");
	         int idx = 1;
	         pstmt.setString(idx++, member.getId()); // 1
	         pstmt.setString(idx++, member.getPwd()); // 2
	         pstmt.setString(idx++, member.getEmail());// 3
	         pstmt.setString(idx++, member.getName()); // 4
	         
	         // select : executeQuery, insert update delete : executeUpdate
	         pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
   }
   
   public void update(Member member) {
		Connection conn = DBConn.getConnection();
	      try {
	    	  //글작성
	         PreparedStatement pstmt = conn.prepareStatement(
	        		 "UPDATE TBL_MEMBER SET PWD = ? , EMAIL = ? , NAME = ? WHERE ID = ? ");
	         int idx = 1;
	         pstmt.setString(idx++, member.getPwd());// 2
	         pstmt.setString(idx++, member.getEmail());
	         pstmt.setString(idx++, member.getName());
	         pstmt.setString(idx++, member.getId());// 1
	         
	         // select : executeQuery, insert update delete : executeUpdate
	         pstmt.executeUpdate();
	         
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
		
	}
   public void delete(String id) {
       Connection conn = DBConn.getConnection();
       try {
          // 회원탈퇴
          PreparedStatement pstmt = conn.prepareStatement(
                "DELETE TBL_MEMBER WHERE ID=?");
          int idx = 1;
          pstmt.setString(idx++, id);
          
          // select : executeQuery, insert update delete : executeUpdate
          pstmt.executeUpdate();
          
       } catch (SQLException e){
          e.printStackTrace();
       }
    }
   
   public Member findBy(String id) {
	   Connection conn = DBConn.getConnection();
	   Member member = null;
	      try {
	         PreparedStatement pstmt= conn.prepareStatement("SELECT ID, PWD, EMAIL, NAME FROM TBL_MEMBER WHERE ID=?");
	         pstmt.setString(1, id);
	         ResultSet rs = pstmt.executeQuery();
	         
	        if(rs.next()) {
	        	int idx = 1;
	        	member = new Member(
	        			rs.getString(idx++),
	        			rs.getString(idx++),
	        			rs.getString(idx++),
	        			rs.getString(idx++)
	        			);
	        }
	      } catch (SQLException e) {
	         e.printStackTrace();
	      }
	      return member;
   }
   public static void main(String[] args) { //ctrl + f11 java application 으로 실행하면 console에 뜸
	   MemberDao dao = new MemberDao();
	   System.out.println(dao.login("javaman", "1234"));
	   System.out.println(dao.login("javaman", "5678"));
	   System.out.println(dao.login("javaman1", "1234"));
}
   
}
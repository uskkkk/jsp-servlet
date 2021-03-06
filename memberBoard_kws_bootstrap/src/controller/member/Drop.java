package controller.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.MemberServiceImpl;


@WebServlet("/drop")
public class Drop extends HttpServlet{
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
        
   }

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 회원탈퇴 실행시탈퇴할 회원의 아이디를 가져온다.
        String id = req.getParameter("id");
        //회원탈퇴
        new MemberServiceImpl().drop(id);
        
        req.getSession().invalidate();
        req.getRequestDispatcher("WEB-INF/jsp/common/index.jsp").forward(req, resp);
	}
   
}
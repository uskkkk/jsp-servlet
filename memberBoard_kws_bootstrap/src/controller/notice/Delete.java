package controller.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BoardDao;
import service.BoardServiceImpl;

@WebServlet("/notice/delete")
public class Delete extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Long bno = Long.parseLong(req.getParameter("bno"));
//		// 글 삭제
//		new BoardServiceImpl().repRemove(bno);
//		new BoardServiceImpl().attRemove(bno);
		new BoardServiceImpl().remove(bno);
		resp.sendRedirect("list");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  // 사용자로부터 넘어온 데이터 3개를 받아준다.
        Long bno = Long.parseLong(req.getParameter("bno"));
        String password = req.getParameter("password");
        String pass = req.getParameter("pass");
 
        // 패스워드가 같을 경우에는 데이터를 삭제하고 리스트화면을 보여준다.
        if (password.equals(pass)) {
 
            BoardDao bdao = new BoardDao();
            bdao.delete(bno);
 
            RequestDispatcher dis = req.getRequestDispatcher("BoardListCon.do");
            dis.forward(req, resp);
 
        } else {
 
            req.setAttribute("msg", 2);
            RequestDispatcher dis = req.getRequestDispatcher("BoardListcon.do");
 
        }
	}

}

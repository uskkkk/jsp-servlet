package controller.notice;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.FileRenamePolicy;

import dao.BoardDao;
import service.BoardServiceImpl;
import util.MyFileRenamePolicy;
import vo.Attach;
import vo.Board;
import vo.Member;

@WebServlet("/notice/update")
public class Update extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Long bno = Long.parseLong(req.getParameter("bno"));
		// 글 삭제
		// 글번호 받아오기
//		Board board = new BoardServiceImpl().read(bno);
		
		String id = ((Member)req.getSession().getAttribute("member")).getId();
		
//		System.out.println(id);
		
		HttpSession session = req.getSession();
	    session.setAttribute("notice", new BoardServiceImpl().read(bno));
	    
//	    System.out.println(session.getAttribute("notice"));
		req.getRequestDispatcher("/WEB-INF/jsp/notice/update.jsp").forward(req, resp);
		
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		String bno = req.getParameter("bno");
		
		
		Board board = new Board(title, content, Long.parseLong(bno), 1L);
		BoardServiceImpl impl = new BoardServiceImpl();
		
		
		impl.modify(board);
		resp.sendRedirect("/notice/list");
		
		
	   }
//	   private String getPath() {
//	      return new SimpleDateFormat("yyMMdd").format(new Date());
//	   }
	   
}

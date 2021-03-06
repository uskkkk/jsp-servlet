package service;

import java.util.List;

import dao.BoardDao;
import vo.Attach;
import vo.Board;
import vo.Criteria;

public class BoardServiceImpl implements BoardService{
	private BoardDao dao = new BoardDao();
	@Override
	// 트랜잭션
	public Long write(Board board) {
		//글작성 > 후 글번호 반환
		Long bno = dao.insert(board);
		
		// 각 첨부파일에 글번호 부여
		for(Attach attach : board.getAttachs()) {
			attach.setBno(bno);
			// 첨부 파일 작성
			dao.writeAttach(attach);
		}
		
		// 첨부 파일 작성
//		dao.writeAttach(attach)
		
		return bno;
	}

	@Override
	public Board read(Long bno) {
		Board board = dao.read(bno);
		board.setAttachs(dao.readAttach(bno));
		return board;
	}

	@Override
	public List<Board> list() {
		return dao.list();
	}

	@Override
	public List<Board> list(Criteria cri) {
		// TODO Auto-generated method stub
		List<Board> list = dao.list(cri);
		list.forEach(b -> b.setAttachs(dao.readAttach(b.getBno())));
		return list;
	}

	@Override
	public void modify(Board board) {
		// TODO Auto-generated method stub
		dao.update(board);
	}

	@Override
	public void remove(Long bno) {
		// TODO Auto-generated method stub
		dao.delete(bno);
		dao.replyDelete(bno);
		dao.attachDelete(bno);
	}
	
	public void repRemove(Long bno) {
		// TODO Auto-generated method stub
		dao.replyDelete(bno);
	}
	
	public void attRemove(Long bno) {
		// TODO Auto-generated method stub
		dao.attachDelete(bno);
	}
	
	@Override
	public String findOriginBy(String uuid) {
		// TODO Auto-generated method stub
		return dao.findOriginBy(uuid);
	}

	public int getCount(Criteria cri) {
		// TODO Auto-generated method stub
		return dao.getCount(cri);
	}

	@Override
	public List<Attach> readAttachByPath(String path) {
		return dao.readAttachByPath(path);
	}

	public Board read(String id) {
		// TODO Auto-generated method stub
		return dao.read(id);
	}




}

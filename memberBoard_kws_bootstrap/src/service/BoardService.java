package service;

import java.util.List;

import vo.Attach;
import vo.Board;
import vo.Criteria;

public interface BoardService {
   // 글쓰기
   Long write(Board board);
   // 글조회
   Board read(Long bno);
   // 목록조회
   List<Board> list();
   
   
   List<Board> list(Criteria cri);
   // 글수정
   void modify(Board board);
   // 글삭제
   void remove(Long bno);
   // 댓글 삭제
   void repRemove(Long bno);
   // 첨부파일 삭제
   void attRemove(Long bno);
   /**
    * 
    * @param uuid
    * @return origin
    */
   String findOriginBy(String uuid);
   
   List<Attach> readAttachByPath(String path);
}
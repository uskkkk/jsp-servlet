package service;

import java.util.List;

import dao.MemberDao;
import vo.Member;

public class MemberServiceImpl implements MemberService{
   private MemberDao dao = new MemberDao();
         
   @Override
   public List<Member> getMembers() {
      return dao.getMembers();
   }

	@Override
	public boolean login(String id, String pwd) {
	// TODO Auto-generated method stub
	return dao.login(id,pwd);
	
}

	@Override
	public void join(Member member) {
		dao.join(member);
	}

	@Override
	public Member findBy(String id) {
		return dao.findBy(id);
	}
	
	public void modify(Member member) {
		dao.update(member);
	}

	@Override
	public void drop(String id) {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

}
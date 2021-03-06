package service;

import java.util.List;

import vo.Member;

public interface MemberService {
   
   
   // 할 일
   
   // 회원가입
	void join(Member member);
   
   // 로그인
	boolean login(String id, String pwd);
   // 탈퇴
   void drop(String id);
   // 로그아웃
   
   // 정보수정
	void modify(Member member);
   // id/pw 찾기
   
   
   // 단일 회원 조회
	Member findBy(String id);
   // 회원 목록 조회
   List<Member> getMembers();



   
 
}
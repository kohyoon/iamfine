package kr.spring.member.dao;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kr.spring.member.vo.MemberVO;

@Mapper
public interface MemberMapper {
	/*=================
	 * 회원관리 - 일반회원
	 *=================*/
	
	//회원번호 생성
	@Select("SELECT mem_seq.nextval FROM dual")
	public int selectMem_num();
	
	//회원가입
	@Insert("INSERT INTO member (mem_num, mem_id, mem_nickname) VALUES(#{mem_num}, #{mem_id}, #{mem_nickname})")
	public void insertMember(MemberVO member);
	public void insertMember_detail(MemberVO member);
	
	//ID를 이용한 회원정보 체크
	public MemberVO selectCheckMember(String mem_id);
	
	//회원번호를 이용한 회원정보 구하기
	public MemberVO selectMember(Integer mem_num);
	
	//회원정보 수정
	public void updateMember(MemberVO member);
	public void updateMember_detail(MemberVO member);
	
	//비밀번호 수정
	public void updatePassword(MemberVO member);
	
	//회원탈퇴
	public void deleteMember(Integer mem_num);
	public void deleteMember_detail(Integer mem_num);
	
	//자동로그인 처리
	public void updateAuto_id(@Param("auto_id") String auto_id, @Param("mem_num") int mem_num);
	public MemberVO selectAuto_id(String auto_id);
	public void deleteAuto_id(Integer mem_num);
	
	
	
	
}

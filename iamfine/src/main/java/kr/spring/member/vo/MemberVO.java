package kr.spring.member.vo;

import java.sql.Date;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class MemberVO {
	private int mem_num;
	@Pattern(regexp="^[A-Za-z0-9]{4,12}$")
	private String mem_id;
	private int mem_auth; //1:일반 2:정지 8:개발자 9:관리자
	private String auto_log; //자동로그인
	private String auto_id; //자동로그인 처리에 필요한 요소
	@NotEmpty
	private String mem_nickname;
	@NotEmpty
	private String mem_name;
	@Pattern(regexp="^[A-Za-z0-9]{4,12}$")
	private String mem_pw;
	@Email
	@NotEmpty
	private String mem_email;
	@NotEmpty
	private String mem_phone;
	private Date mem_regdate;
}

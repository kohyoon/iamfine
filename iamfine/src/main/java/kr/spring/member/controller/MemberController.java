package kr.spring.member.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.spring.member.service.MemberService;
import kr.spring.member.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberSerivce;
	
	//자바빈 초기화
	@ModelAttribute
	public MemberVO initCommand() {
		return new MemberVO();
	}
	
	//회원가입
	@GetMapping("/member/registerUser.do")
	public String form() {
		return "memberRegister";
	}
	//회원가입 처리
	@PostMapping("/member/registerUser.do")
	public String submit(@Valid MemberVO memberVO, BindingResult result, Model model) {
		
		log.debug("<<회원가입>> : " + memberVO);
		
		if(result.hasErrors()) {
			return form();
		}
		
		//회원가입
		memberSerivce.insertMember(memberVO);
		
		model.addAttribute("accessMsg", "회원가입이 완료되었습니다!");
		
		return "common/notice";
	}
	
	
	
	
}

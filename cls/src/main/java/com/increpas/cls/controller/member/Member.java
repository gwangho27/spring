package com.increpas.cls.controller.member;
import java.util.ArrayList;

/**
 * 이 클래스는 회원 정보 관리와 관련된 컨트롤러이다. 
 */
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.increpas.cls.dao.MemberDAO;
import com.increpas.cls.vo.MemberVO;

@Controller
@RequestMapping("/member")
public class Member {
	@Autowired
	MemberDAO mDAO;
	@RequestMapping("/login.cls")
	public ModelAndView login(HttpSession session, ModelAndView mv) {
		String sid  = (String)session.getAttribute("SID");
		String view  = "member/login";
		if(sid != null ) {
			RedirectView rv =new RedirectView("/cls/main.cls");
			mv.setView(rv);
		} else {
			mv.setViewName(view);
		}
		return mv;
	}
	
	@RequestMapping("/join.cls")
	public ModelAndView join(HttpSession session, ModelAndView mv) {
		String sid  = (String)session.getAttribute("SID");
		String view  = "member/join";
		if(sid != null ) {
			RedirectView rv =new RedirectView("/cls/main.cls");
			mv.setView(rv);
		} else {
			mv.setViewName(view);
		}
		return mv;
	}
	@RequestMapping(path= {"/Login.cls","/Join.cls"})
	public ModelAndView doolcuri(ModelAndView mv){
		String view = "main";
		mv.setViewName(view);	
		return mv;
	}
	@RequestMapping(value="/loginProc.cls", method=RequestMethod.POST , params= {"id", "pw"})
	public ModelAndView loginProc(String id, String pw,MemberVO mVO,ModelAndView mv,HttpSession session) {
		/*
		 * public ModelAndView loginProc(String id, String pw,ModelAndView
		 * mv,HttpSession session) { System.out.println("##### id : " + id);
		 * System.out.println("##### pw : " + pw); // 데이터 받고 전달할 데이터 만들고 MemberVO mVO =
		 * new MemberVO(); mVO.setId(id); mVO.setPw(pw);
		 */
		int cnt = mDAO.login(mVO);
		
		
		RedirectView rv = null;
		if(cnt == 1 ) {
			rv = new RedirectView("/cls/main.cls");
			System.out.println(mVO.getId());
			session.setAttribute("SID", id);
		} else {
			// 임시로 당분간은 로그인 페이지로 리다이렉트 시키기로 하자 
			rv = new RedirectView("/cls/member/login.cls");
		}
		mv.setView(rv);
		
		return mv;
	}
	@RequestMapping(value="/loginProc.cls", method=RequestMethod.POST, params= {"!id","!pw"})
	public ModelAndView loginProcRedirect(String id, String pw,ModelAndView mv ) {
		System.out.println("##### redirect");
		System.out.println("##### id : " + id);
		System.out.println("##### pw : " + pw);
		
		RedirectView rv = new RedirectView("/cls/member/login.cls");
		mv.setView(rv);
		
		return mv;
	}
	@RequestMapping(value="/logoutProc.cls")
	public ModelAndView logoutProc(ModelAndView mv,HttpSession session) {
		/*
		 	이 함수는 로그아웃처리를 할 함수 
		 	로그아웃처리가 정상적으로 되면 로그인페이지로 강제 이동
		 */
		RedirectView rv= null;
		String view = "/cls/member/login.cls";
		
		String id = (String)session.getAttribute("SID");
		if("".equals(id)||id ==null) {
			rv = new RedirectView("/cls/main.cls");
			mv.setView(rv);
		}else {
			rv = new RedirectView(view);
			session.removeAttribute("SID");
			mv.setView(rv);
		}
		return mv;
	}
	// w3.css 칼라 클래스 리스트 반환함수
	public ArrayList<String> getColorList(){
		ArrayList<String> list = new ArrayList<String>();
		list.add("w3-red");
		list.add("w3-pink");
		list.add("w3-purple");
		list.add("w3-deep-purple");
		list.add("w3-indigo");
		list.add("w3-blue");
		list.add("w3-cyan");
		list.add("w3-aqua");
		list.add("w3-teal");
		list.add("w3-green");
		list.add("w3-light-green");
		list.add("w3-lime");
		list.add("w3-khaki");
		list.add("w3-yellow");
		list.add("w3-amber");
		list.add("w3-orange");
		list.add("w3-deep-orange");
		return list;
	}
	@RequestMapping("/memberList.cls")
	public ModelAndView getList(ModelAndView mv ) {
		String view = "member/memberList";
		//할일 
		
		// 1. 받을 데이터 없으므로 보낼 데이터만 만들면 된다 .
		
		ArrayList<String> color = getColorList();
		
		// 1-2. 회원 버튼에 필요한 리스트 가져오기 
		ArrayList<MemberVO> list = (ArrayList<MemberVO>) mDAO.getList();
		
		// 2. 데이터가 준비 되었으면 데이터를 넘겨준다. 
		mv.addObject("COLOR",color);
		mv.addObject("LIST",list);
		// 3. 뷰도 넘겨주고 
		mv.setViewName(view);
		
		return mv; 
	}
	@RequestMapping("/memberDetail.cls")
	public ModelAndView memberDetail(ModelAndView mv ,HttpSession session,MemberVO mVO) {
		String id = (String)session.getAttribute("SID");
		MemberVO mbVO = mDAO.getDetail(mVO);
		System.out.println(mbVO.getMno());
		RedirectView rv = null;
		if("".equals(id)||id ==null) {
			rv = new RedirectView("/cls/main.cls");
			mv.setView(rv);
		}else {
			String view = "/member/memberDetail";
			mv.addObject("DATA",mbVO);
			mv.setViewName(view);
		}
		return mv; 
	}
}
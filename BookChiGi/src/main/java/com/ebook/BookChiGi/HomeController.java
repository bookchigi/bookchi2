package com.ebook.BookChiGi;


import java.sql.SQLException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ebook.BookChiGi.model.dao.BookDAO;
import com.ebook.BookChiGi.model.dao.MemberDAO;
import com.ebook.BookChiGi.model.dto.MemberVO;

/**
 * URL�� �ּҿ� ���� JSP ���� Ŭ����. �ۼ������� Ȩ - �α��� - ȸ������ - ��ÿ��� - ��ȸ���� ��.
 * 
 * @author PurplelightFullmoon
 */
@Controller
public class HomeController {
	private MemberDAO memberDao;
	private BookDAO bookDao;
	
	@Autowired public void setMemberDao (MemberDAO memberDao) { this.memberDao = memberDao; }
	@Autowired public void setBookDao (BookDAO bookDao) { this.bookDao = bookDao; }
	
	/*== Ȩ ==*/
	@RequestMapping ("/") public String home (Model model) {
		try { model.addAttribute ("booklist_new", bookDao.alignBookByNew (1)); } catch (SQLException e) { e.printStackTrace (); }
		try { model.addAttribute ("booklist_pop", bookDao.alignBookByPop (1)); } catch (SQLException e) { e.printStackTrace (); }
		try { model.addAttribute ("booklist_rec", bookDao.alignBookByRec (1)); } catch (SQLException e) { e.printStackTrace (); }
		try { model.addAttribute ("booklist_sec", bookDao.alignBookBySec (1)); } catch (SQLException e) { e.printStackTrace (); }
		
		return "home";
	}
	
	/*== �α��� ==*/
	@RequestMapping (value="/login", method=RequestMethod.GET) public String login (HttpSession session) {
		if (session.getAttribute("account") != null) {
			session.removeAttribute ("account");
			return "home";
		}
		
		return "login";
	}
	@RequestMapping (value="/login", method=RequestMethod.POST) public ModelAndView login (@ModelAttribute MemberVO member, Model model, HttpSession session) {
		ModelAndView mav = new ModelAndView ();
		
		try {
			if (memberDao.isLoginPassed (member.getUserMail (), member.getUserPw ())) {
				session.setAttribute ("account", memberDao.searchMemberByMail (member.getUserMail ()));
				try { model.addAttribute ("booklist_new", bookDao.alignBookByNew (1)); } catch (SQLException e) { e.printStackTrace (); }
				try { model.addAttribute ("booklist_pop", bookDao.alignBookByPop (1)); } catch (SQLException e) { e.printStackTrace (); }
				try { model.addAttribute ("booklist_rec", bookDao.alignBookByRec (1)); } catch (SQLException e) { e.printStackTrace (); }
				try { model.addAttribute ("booklist_sec", bookDao.alignBookBySec (1)); } catch (SQLException e) { e.printStackTrace (); }
				
				mav.setViewName ("home");
				return mav;
			} else {
				mav.addObject ("loginErr", "<div class='alert alert-danger' role='alert'>�α��ο� �����Ͽ����ϴ�. �ٽ� �α������ּ���.</div><br>");
				
				mav.setViewName ("login");
				return mav;
			}
		} catch (Exception e) {
			e.printStackTrace ();
			mav.addObject ("loginErr", "<div class='alert alert-danger' role='alert'>�α��� �߿� ������ �߻��� �� �մϴ�. �ٽ� �α������ּ���.</div><br>");
			
			mav.setViewName ("login");
			return mav;
		}
	}
	
	/*== ȸ������ ==*/
	@RequestMapping (value="/signup", method=RequestMethod.GET) public String signup () { return "signup"; }
	@RequestMapping (value="/signup", method=RequestMethod.POST) public String signup (@ModelAttribute MemberVO member, Model model) {
		int result = 0;
		String errMsg = "";

		if (!member.getUserPw().equals (member.getRepeatPw ())) {
			errMsg = "��Ͽ� �����߽��ϴ�. �н����� Ȯ���� ��ġ���� �ʽ��ϴ�.";
			model.addAttribute ("signupErr", "<div class='alert alert-danger' role='alert'>" + errMsg + "</div>");
			System.out.println (errMsg);
			return "redirect:signup";
		}
		
		try {
			result = memberDao.signupMember (member);
		} catch (SQLException e) { e.printStackTrace (); }
		
		if (result == 1) return "signupok";
		else {
			switch (result) {
				case -1 : errMsg = "��Ͽ� �����߽��ϴ�. �� ������ �ݺ��� ��� �����ּ� �ߺ��� ���ɼ��� �����ϴ�."; break;
				case  0 : errMsg = "��Ͽ� �����߽��ϴ�. �� ������ �ݺ��� ��� �����ڿ��� �����Ͽ��ּ���."; break;
				default : break;
			}
			
			System.out.println (errMsg);
			model.addAttribute ("signupErr", "<div class='alert alert-danger' role='alert'>" + errMsg + "</div>");
			
			return "redirect:signup";
		}
	}
	
	/*== ��ÿ��� ==*/
	@RequestMapping (value="/myaccount", method=RequestMethod.GET) public String myaccount () { return "myaccount"; }
	@RequestMapping ("/recentBook") public String recentBook () { return "recentBook"; }
	@RequestMapping ("/favorite") public String favorite () { return "favorite"; }
	@RequestMapping ("/purchased") public String purchased () { return "purchased"; }
	@RequestMapping ("/secondary") public String secondary () { return "secondary"; }
	@RequestMapping ("/talkabout") public String talkabout () { return "talkabout"; }
	
	/*== ��ȸ���� ==*/
	@RequestMapping (value="/myaccount", method=RequestMethod.POST) public ModelAndView myaccount (@ModelAttribute MemberVO member, HttpSession session) {
		int result = 0;
		ModelAndView mav = new ModelAndView ();
		
		if (session.getAttribute ("account") != null) {
			try {
				result = memberDao.modifyMember (member);
				if (result != 0) {
					mav.setViewName ("redirect:/");
					session.setAttribute ("account", member);
				} else {
					mav.setViewName ("myaccount");
					mav.addObject ("myaccountErr", "<div class='alert alert-danger' role='alert'>���� ������ ����� ���� ���� ����̿���... �ٽ� �ѹ� �� �������ֽðھ��?</div>");
				}
			} catch (SQLException e) {
				e.printStackTrace ();
				mav.setViewName ("myaccount");
				mav.addObject ("myaccountErr", "<div class='alert alert-danger' role='alert'>��񸸿�... �ٽ� �ѹ� �� �������ֽðھ��?</div>");
			}
			
			return mav;
		}
		
		mav.setViewName ("myaccount");
		return mav;
	}
	
	@RequestMapping (value="/detail", method=RequestMethod.GET) public String detail (@PathVariable int idx) {
		
		
		return "detail";
	}
}
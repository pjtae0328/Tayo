package fun.tayo.app.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import fun.tayo.app.common.SessionConst;
import fun.tayo.app.dto.MemberSession;
import fun.tayo.app.dto.QuestionMessage;
import fun.tayo.app.dto.QusetionChat;
import fun.tayo.app.dto.ResponseData;
import fun.tayo.app.dto.ResponseObject;
import fun.tayo.app.service.face.QuestionChatService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/question")
public class QuestionChatController {
	
	private final QuestionChatService questionChatService;
	
	@ResponseBody
	@PostMapping(value = "/service/open")
	public int openChat(
			@SessionAttribute(value = SessionConst.LOGIN_MEMBER) MemberSession memberSession
			) {
		
		try {
			return questionChatService.openChat(memberSession);
		} catch (Exception e) {
			log.error("questionChatService.openChat error ", e);
			return 0;
		}
	}
	
	
	
	@GetMapping(value = "/service")
	public String joinChatRoom(
			@SessionAttribute(value = SessionConst.LOGIN_MEMBER) MemberSession memberSession,
			Model model			
			) {
		int questionId = questionChatService.openChat(memberSession);
		model.addAttribute("questionId", questionId);
		return "user/question-chat/question-chat";
	}
	
	@ResponseBody
	@PostMapping(value = "/service/{questionChatId}")
	public ResponseObject joinChatRoomProc(@PathVariable int questionChatId) {
		return questionChatService.getMessageList(questionChatId);
	}
	
}

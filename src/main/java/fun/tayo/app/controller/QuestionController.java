package fun.tayo.app.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import fun.tayo.app.dto.Question;
import fun.tayo.app.service.face.QuestionService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequiredArgsConstructor
public class QuestionController {

	private final QuestionService questionService;
	
	@RequestMapping(value="/question", method=RequestMethod.GET)
	public String questionList(Model model) {
		
		List<Question> list = questionService.questionList();
		model.addAttribute("list", list);
		log.debug("list", list);
		return "user/question/question";
	}
	
	@ResponseBody
	@RequestMapping(value ="/question", method=RequestMethod.POST)
	public List<Question> getQuestionList(){
		
		List<Question> list = questionService.questionList();
		
		return list;
	}
	
	@RequestMapping(value="/admin/question", method = RequestMethod.GET)
	public String adminQuestList(Model model) {
		
		List<Question> list = questionService.questionList();
		model.addAttribute("list", list);
		return "admin/question/question";
	}
	
	@RequestMapping(value="/admin/question/write", method = RequestMethod.GET)
	public void questionWrite() {
		
	}
	
//	@ResponseBody
	@RequestMapping(value="/admin/question/write", method = RequestMethod.POST)
	public String questionWriteProc(Question question) {
		log.info("{}", question); 
		
		questionService.write(question);
		return "redirect:/admin/question";
	}
	
	@RequestMapping(value="/admin/question/update", method = RequestMethod.GET)
	public String questionUpdate(Question question, Model model) {
	
		Question questionNo = questionService.getQuestionNo(question);
		model.addAttribute("questionNo", questionNo);
		
		return "/admin/question/update";
	}
	
	@RequestMapping(value="/admin/question/update", method = RequestMethod.POST)
	public String questionUpdateProc(Question question) {
		
		questionService.update(question);
		
		return null;
	}
}















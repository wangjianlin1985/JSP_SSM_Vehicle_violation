package com.app.controller;

import java.io.File;
import java.util.LinkedList;
import java.util.List;
import java.util.Random;
import java.util.UUID;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.registry.infomodel.User;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.app.entity.*;
import com.app.service.*;
import com.app.utils.MD5;
import com.app.utils.MainUtils;

@Controller
@RequestMapping("/app")
public class HomeController {
	
	@Resource
	UsersService userService;

	
	@Resource InfocateService cService;
	@Resource NewsService nService;
	@RequestMapping("/news")
	public String news(String cateId,Model model) {
		
		List<News> nList = nService.getAllNews();
		List<News> nList1 = new LinkedList<News>();
		if(cateId!=null)
		{
			for (News n:nList) {
				if(n.getUid().equals(cateId))
					nList1.add(n);
			}
			model.addAttribute("nlist",nList1);
		}else{			
			model.addAttribute("nlist",nList);
		}
		
		model.addAttribute("clist",cService.getAllInfocate());
		return "home/news";
	}
	
	
	

@RequestMapping("/showNews")
	public ModelAndView showNews(int id,Model model)
	{
		ModelAndView mav = new ModelAndView("home/showNews");
		News article = nService.getNewsById(id);
		model.addAttribute("model",article);model.addAttribute("clist",cService.getAllInfocate());
		return mav;
	}
	
	
	
	@RequestMapping("/index")
	public String index(HttpSession session,Model model) {

		
		return "home/index";
	}
	
	
}

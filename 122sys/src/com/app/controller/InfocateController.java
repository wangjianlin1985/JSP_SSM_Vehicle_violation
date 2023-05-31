package com.app.controller;
import java.io.File;
import java.util.List;
import java.util.UUID;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.app.entity.*;
import com.app.service.*;
import com.app.utils.MainUtils;
@Controller
@RequestMapping("/infocate")
public class  InfocateController {
@Resource InfocateService infocateService;
	
@RequestMapping("/infocate/add")
	public String infocateAdd()
	{		
		return "admin/infocate/add";
	}
@RequestMapping(value="/infocate/save",method = RequestMethod.POST)
	public String infocateSave(String title,
String created,
Model model)
	{		
		Infocate modelX = new Infocate();		
		modelX.setTitle(title);
modelX.setCreated(MainUtils.getTime());
		
		infocateService.insert(modelX);
		model.addAttribute("inpost", true);
		model.addAttribute("message", "������ݴ����ɹ�!");
		return "admin/infocate/add";
	}
@RequestMapping("/infocate/delete")
	public String infocateDelete(int id)
	{
		infocateService.delete(id);		
		return "redirect:list";
	}
	
@RequestMapping("/infocate/list")
	public ModelAndView infocateList()
	{
		List<Infocate> infocateList = infocateService.getAllInfocate();
		System.out.println(infocateList.size());
		ModelAndView mav = new ModelAndView("admin/infocate/list");
		mav.addObject("list",infocateList);
		return mav;
	}
@RequestMapping("/infocate/edit")
	public String infocateEdit(String id,Model model)
	{		
		Infocate infocate = infocateService.getInfocateById(Integer.parseInt(id));
		model.addAttribute("model",infocate);
		return "admin/infocate/edit";
	}
@RequestMapping(value="/infocate/update",method = RequestMethod.POST)
	public String infocateUpdate(String title,
String created,
int id,
			Model model)
	{		
		
		Infocate modelX = infocateService.getInfocateById(id);		
		modelX.setTitle(title);

	
		infocateService.update(modelX);
		model.addAttribute("inpost", true);
		model.addAttribute("model", modelX);
		model.addAttribute("message", "������ݸ��³ɹ�");
		return "admin/infocate/edit";
	}
}

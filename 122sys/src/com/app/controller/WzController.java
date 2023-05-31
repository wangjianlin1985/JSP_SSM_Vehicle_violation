package com.app.controller;
import java.io.File;
import java.util.LinkedList;
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
@Controller
@RequestMapping("/wz")
public class  WzController {
@Resource WzService wzService;

@Resource AutocarService autocarService;

@Resource
UsersService usersService;
@RequestMapping("/wz/add")
public ModelAndView fixformAdd(HttpSession session)
{		


List<Autocar> autocarList = autocarService.getAllAutocar();
List<Autocar> autocarList1 = new LinkedList<Autocar>();
if(autocarList.size()>0)
{
	for (Autocar a:autocarList) {
		
			a.setU(usersService.getUsersById(Integer.parseInt(a.getUserid())));
			
			autocarList1.add(a);
		
	}
}

System.out.println(autocarList.size());
ModelAndView mav = new ModelAndView("admin/wz/add");
mav.addObject("list",autocarList1);

	return mav;
}
	
@RequestMapping(value="/wz/save",method = RequestMethod.POST)
	public String wzSave(String uid,
int carid,
String title,
String price,
String score,
Model model)
	{		
	
		
		Wz modelX = new Wz();		
		modelX.setUid(autocarService.getAutocarById(carid).getUserid());
modelX.setCarid(carid+"");
modelX.setTitle(title);
modelX.setPrice(price);
modelX.setScore(score);
		
		wzService.insert(modelX);
		model.addAttribute("inpost", true);
		model.addAttribute("message", "违章抓拍成功!");
		return "admin/wz/add";
	}
@RequestMapping("/wz/delete")
	public String wzDelete(int id)
	{
		wzService.delete(id);		
		return "redirect:list";
	}



@RequestMapping("/wz/mylist")
	public ModelAndView mylist(HttpSession session)
	{
	String uid = session.getAttribute("userid")+"";
		List<Wz> wzList = wzService.getAllWz();
		List<Wz> wzList1 = new LinkedList<Wz>();
		if(wzList.size()>0)
		{
			for (Wz wz : wzList) {
				if(uid.equals(wz.getUid())){
				wz.setCar(autocarService.getAutocarById(Integer.parseInt(wz.getCarid())));
				wz.setU(usersService.getUsersById(Integer.parseInt(wz.getUid())));
				wzList1.add(wz);
				}
			}
		}
		System.out.println(wzList.size());
		ModelAndView mav = new ModelAndView("admin/wz/mylist");
		mav.addObject("list",wzList1);
		return mav;
	}
	
@RequestMapping("/wz/list")
	public ModelAndView wzList()
	{
		List<Wz> wzList = wzService.getAllWz();
		List<Wz> wzList1 = new LinkedList<Wz>();
		if(wzList.size()>0)
		{
			for (Wz wz : wzList) {
				wz.setCar(autocarService.getAutocarById(Integer.parseInt(wz.getCarid())));
				wz.setU(usersService.getUsersById(Integer.parseInt(wz.getUid())));
				wzList1.add(wz);
			}
		}
		System.out.println(wzList.size());
		ModelAndView mav = new ModelAndView("admin/wz/list");
		mav.addObject("list",wzList1);
		return mav;
	}
@RequestMapping("/wz/edit")
	public String wzEdit(String id,Model model)
	{		
		Wz wz = wzService.getWzById(Integer.parseInt(id));
		model.addAttribute("model",wz);
		return "admin/wz/edit";
	}
@RequestMapping(value="/wz/update",method = RequestMethod.POST)
	public String wzUpdate(String uid,
String carid,
String title,
String price,
String score,
int id,
			Model model)
	{		
		
		Wz modelX = wzService.getWzById(id);
modelX.setTitle(title);
modelX.setPrice(price);
modelX.setScore(score);
	
		wzService.update(modelX);
		model.addAttribute("inpost", true);
		model.addAttribute("model", modelX);
		model.addAttribute("message", "更新违章成功");
		return "admin/wz/edit";
	}
}

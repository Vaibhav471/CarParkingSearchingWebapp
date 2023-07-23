package com.bcollege;

import java.util.ArrayList;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;



import jakarta.validation.Valid;



@Controller
public class MyController {
	@GetMapping(value="/")
	public ModelAndView index() {
		ModelAndView model=new ModelAndView("index");
		User user=new User();

		model.addObject("userL", user);

		return model;
		
	}
	
	@GetMapping(value="/signupwin")
	public ModelAndView signupwin() {
		ModelAndView model=new ModelAndView("signupwin");
		User user1=new User();

		model.addObject("userS", user1);

		return model;
		
	}
	
	@PostMapping(value="/signup")
	public ModelAndView signup(@Valid @ModelAttribute("userS")User user, BindingResult result) {
		if(result.hasErrors()) {
			ModelAndView model =new ModelAndView("index");
			model.addObject("userL",new User());
			
			return model;
			}
			else{
				ModelAndView model =new ModelAndView("index");
				DBHandler db=new DBHandler();
				db.save(user);
				
				model.addObject("userL",new User());
				return model;
			}	}

	@PostMapping(value="/login")
	public ModelAndView login(@ModelAttribute("userL")User user, jakarta.servlet.http.HttpServletRequest request) {
		
		DBHandler db=new DBHandler();
		User u=db.isValid(user);

		if(u!=null) {
		ModelAndView model=new  ModelAndView("welcome");
		model.addObject("user",u);
		request.getSession().setAttribute("user", u);
		return model;
		}
		else {
			ModelAndView model=new  ModelAndView("index");
			model.addObject("userS",new User());
			model.addObject("userL",new User());			
			return model;
		}
		
	}
	
	@PostMapping(value="listspots")
	public ModelAndView listSpots(@ModelAttribute("user")User user) {
		ModelAndView model=new ModelAndView("listspot");
		Address ad=new Address();
		model.addObject("address",ad);
		model.addObject("user",user);
		return model;
		
	}
	
	@PostMapping(value="/savespot")
	public ModelAndView savespot(@ModelAttribute("address")Address address) {
			ModelAndView model =new ModelAndView("listspot");
			model.addObject("address",new Address());
			
			DBHandler db=new DBHandler();
			db.save(address);
			
			
			return model;
			
			}
	
	@GetMapping(value="searchspot")
	public ModelAndView searchSpot() {
		ModelAndView model=new ModelAndView("searchspot");
		Address ad=new Address();
		model.addObject("address",ad);
		return model;
		
	}
	
	@PostMapping(value="searchspots")
	public ModelAndView searchSpots(@ModelAttribute("address")Address address, Model m1) {
		ModelAndView model=new ModelAndView("resultspots");
		DBHandler db=new DBHandler();
		ArrayList<Address> add= db.getSpots(address);
		model.addObject("spots",add);
		model.addObject(address);
		m1.addAttribute("address", address);
		return model;
		
		
	}
	
	@GetMapping(value="yourlist")
	public ModelAndView yourlist() {
		ModelAndView model=new ModelAndView("yourlisting");
		return model;
		
	}
	
	@GetMapping(value="spotstatus")
	public ModelAndView spotstatus(jakarta.servlet.http.HttpServletRequest request) {
		int spotId=Integer.parseInt(request.getParameter("spotId"));
		DBHandler db=new DBHandler();
		System.out.println("check1");
		db.updateSpotStatus(spotId);
		ModelAndView model=new ModelAndView("yourlisting");
		return model;
		
	}
	
}

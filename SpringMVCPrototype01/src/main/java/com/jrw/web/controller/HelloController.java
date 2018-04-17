package com.jrw.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.jrw.User;

/*
 * From http://docs.spring.io/autorepo/docs/spring/3.2.x/spring-framework-reference/html/mvc.html:
 * "The @Controller annotation acts as a stereotype for the annotated class, 
 * 		indicating its role. The dispatcher scans such annotated classes for 
 * 		mapped methods and detects @RequestMapping annotations..." 
 * For @RequestMapping info, see section 17.3.2.
 * In these examples below, @RequestMapping is at the method level so the paths are absolute.
 * Note that @RequestMapping can also be used at the class level to make paths relative. 
 */

@Controller
public class HelloController {
	
	private final Logger log = LoggerFactory.getLogger(HelloController.class);
	
	/*
	 * Example method using ModelMap.
	 * This method accepts a ModelMap and returns a view name as a String.
	 * Whenever an HTTP GET request arrives for /, this method will be called.
	 * The String returned will be interpreted by Spring MVC as the name of the
	 * 		view that will be rendered. DispatcherServlet will ask the view
	 * 		resolver to resolve this logical view name into an actual view, which,
	 * 		based on our configuration of InternalRewourceViewResolver (see 
	 * 		springmvcprototype01-servlet.xml), will be resolved as a .jsp.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(ModelMap model) {
		model.addAttribute("title", "Web App Title");
		model.addAttribute("message", "And welcome!");
		return "hello";
	}	
	
	/*
	 * Example method with no model (hence no attributes can be added)
	 */
	@RequestMapping(value = "/hi", method = RequestMethod.GET)
	public String home() {
		return "hi";
	}

	/*
	 * Example method with no model (hence no attributes can be added)
	 */
	@RequestMapping(value = "/usersuccess", method = RequestMethod.POST)
	public String usersuccess() {
		return "usersuccess";
	}
	
	
	/*
	 * Example method that uses the User business object.
	 */
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register(HttpServletRequest req,
			@ModelAttribute("user") User user,
			BindingResult bindResult) {
    	log.info("register(Model model)");
        return "userregistration";
    }

	/*
	 * Example method to show a 2 column page.
	 */
    @RequestMapping(value = "/two-column", method = RequestMethod.GET)
    public String twocolumn(HttpServletRequest req,
			@ModelAttribute("user") User user,
			BindingResult bindResult) {
        return "two-column";
    }
    
	/*
	 * From http://docs.spring.io/autorepo/docs/spring/3.2.x/spring-framework-reference/html/mvc.html:
	 * This method accepts a Model and returns a view name as a String.
	 */
    @RequestMapping("/helloWorld")
    public String helloWorld(Model model) {
    	log.info("helloWorld(Model model)");
        model.addAttribute("helloworldmessage", "Hello World!");
        return "helloWorld";
    }
    
	/*
	 * Return a ModelAndView.
	 */
	@RequestMapping(value = "/hello/{name:.+}", method = RequestMethod.GET)
	public ModelAndView hello(@PathVariable("name") String name) {
		ModelAndView model = new ModelAndView();
		model.addObject("message", "Welcome to this page!");
		model.setViewName("hello");
		return model;
	}

	/*
	 * Return a ModelAndView.
	 */
	@RequestMapping(value = "/hithere")
	public ModelAndView hellox(String name) {
		ModelAndView model = new ModelAndView();
		model.addObject("title", "Page Title Here");
		model.addObject("somemessage", "Welcome!");
		model.setViewName("hithere");
		return model;
	}	
	
}
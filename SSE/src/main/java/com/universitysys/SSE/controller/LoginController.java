package com.universitysys.SSE.controller;

import com.universitysys.SSE.model.Account;
import com.universitysys.SSE.model.Students;
import com.universitysys.SSE.repository.LoginRepository;
import com.universitysys.SSE.repository.ModuleRepository;
import com.universitysys.SSE.service.HasModuleService;
import com.universitysys.SSE.service.ModuleService;
import com.universitysys.SSE.service.RegisterService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.universitysys.SSE.service.LoginService;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.concurrent.SynchronousQueue;

@Controller
@SessionAttributes("name")
public class LoginController {
    private static final Logger logger =   LoggerFactory.getLogger( LoginController.class);
    @Autowired
    LoginService service;
    @Autowired
    LoginRepository repository;
    @Autowired
    ModuleRepository moduleRepository;
    @Autowired
    ModuleService moduleService;
    @Autowired
    RegisterService registerService;
    @Autowired
    HasModuleService hasModuleService;
    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public ModelAndView showRegister() {
        ModelAndView mav = new ModelAndView("register");
        mav.addObject("students", new Students());
        return mav;
    }
    @RequestMapping(value = "/welcome", method = RequestMethod.GET)
    public ModelAndView showWelcome() {
        return new ModelAndView("welcome");
    }



    @GetMapping({"/login" , "/"})
    public ModelAndView showLoginPage(ModelMap model, HttpSession session) {
        if (session.getAttribute("student_user") != null) {
            return new ModelAndView(new RedirectView("/welcome"));
        }
        model.addAttribute("student", new Students());
        return new ModelAndView("index", model);


    }

    @RequestMapping(value = "/logout")
    public RedirectView showLogoutPage(HttpSession session) {
        session.removeAttribute("staff_user");
        session.removeAttribute("student_user");
        return new RedirectView("/");
    }

    @RequestMapping(value={"/login", "/"}, method = RequestMethod.POST)
    public String showWelcomePage(ModelMap model, @RequestParam String name, @RequestParam String password, HttpSession session, @ModelAttribute Students student, Account account){
        logger.info("just a test info log");
        String hash_password = repository.findPasswordbyName(name);
        boolean isValidStudent = service.validateStudent(account , hash_password);

        if (!isValidStudent) {
            model.addAttribute("errorMessage", "Error: Invalid Credentials");
            return "index";
        }

        else {
            Integer findId = repository.findIdbyName(name);
            List<Students> found = repository.findById(findId);
            List<Students> studen = registerService.showStudent(findId);
            Students user=found.get(0) ;
            model.addAttribute("student", studen.toString());
            model.put("findId", findId);
            model.put("name", name);
            System.out.print(" " + findId + " ");
            String welcome = repository.findName(findId) + " " + repository.findSurnameName(findId);
            model.addAttribute("atr_name",  welcome);
            model.addAttribute("Id", findId);
            session.setAttribute("student_user", user);
            System.out.print(model.get("atr_name"));
            System.out.print(student.getName());
            System.out.print(session.getAttribute( "student_user"));
            return "welcome";
        }
    }
    @RequestMapping(value = "/mypayment", method = RequestMethod.POST)
    public  ModelAndView addPayment(HttpSession session,HttpServletRequest request, HttpServletResponse response,
                             @ModelAttribute Students students, ModelMap model) {
        System.out.println("HelloPOST");
        Object name = model.get("name");
        Integer findId = repository.findIdbyName(name.toString());
        service.paysAccount(findId);
        System.out.println(findId);
        return new  ModelAndView( "mymodules");

    }
    @RequestMapping(value="/mypayment", method = RequestMethod.GET)
    public ModelAndView addPayment(HttpSession session,HttpServletRequest request, HttpServletResponse response,
                              @ModelAttribute Account account, ModelMap model){
        if (session.getAttribute("student_user") != null) {
            System.out.println("HelloGET");
            Object name = model.get("name");
            Integer findId = repository.findIdbyName(name.toString());
            service.paysAccount(findId);
            System.out.println(findId);
            model.addAttribute("message", "You have already paid for classes, so now it is possible to choose your modules.");
            return new ModelAndView("payments");

        }
        return new ModelAndView("index");

    }
    @RequestMapping(value = "/allmodules" , method = RequestMethod.POST)
    public void enrollmodules(ModelMap model, @RequestParam String id_module) {
        System.out.print(id_module);
        System.out.print(model.get("name"));
        Object name = model.get("name");
        Integer findId = repository.findIdbyName(name.toString());
        Integer findAmount = moduleService.showAmount();
        Boolean fee = repository.findFeebyName(name.toString());
        if(fee){
        if(Integer.parseInt(id_module) < findAmount ){
            hasModuleService.addMyModule(findId, id_module);
            model.put("succes", "You have succefully enrolled to this module. Go to mymodules to check");}
        else {
            model.put("succes", "There are some problems check module id or your fees.");
        }}
        else{
            model.put("succes", "Pay fees first.");
        }

    }
    @RequestMapping(value = "mymodules" , method = RequestMethod.GET)
    public ModelAndView myModules(ModelMap model, HttpSession session) {
        ModelAndView mod = new ModelAndView("mymodules");
        if (session.getAttribute("student_user") != null) {
        System.out.println("MyModG");
        Object name = model.get("name");
        Integer findId = repository.findIdbyName(name.toString());
        System.out.println(findId);
        System.out.print(moduleRepository.findMyID(findId));
        Integer id[] = moduleRepository.findMyID(findId);
        String sent = null;
        if (id.length > 0)
            sent = " " + "id = " + id[0];

        if (id.length > 1)
            for (int i = 1; i < id.length; i++) {
                sent = sent + " or " + " id = " + id[i];
            }
        mod.addObject("modules",  moduleService.findMyModule(sent));
        System.out.println(sent);
          // mod.addObject("modules",  moduleService.findMyModule(id[i]));
        //mod.addObject("modules",  moduleRepository.findMyID(findId));

        return mod;}
        else
            return new ModelAndView("index");
    }
    @RequestMapping(value = "mymodules" , method = RequestMethod.POST)
    public ModelAndView modules(ModelMap model, HttpSession session) {
        System.out.println("MyModP");
        Object name = model.get("name");
        Integer findId = repository.findIdbyName(name.toString());
        System.out.println(findId);
        System.out.print(moduleRepository.findMyID(findId));
        Integer id[] = moduleRepository.findMyID(findId);
        //f/or (int i = 0; i < id.length; i++)
        //System.out.print(moduleService.findMyModule(id[i]));
        //System.out.print(moduleRepository.findMyModule(id));
        String sent = null;
        if (id.length > 0)
            sent = " " + "id = " + id[0];
        ModelAndView mod = new ModelAndView("mymodules");
        if (id.length > 1)
            for (int i = 1; i < id.length; i++) {
                sent = sent + " or " + " id = " + id[i];
            }
        mod.addObject("modules",  moduleService.findMyModule(sent));
        System.out.println(sent);
        // mod.addObject("modules",  moduleService.showInfo());
        return mod;
    }
    @RequestMapping(value="/payment", method = RequestMethod.GET)
    public String showPayment(HttpSession session,HttpServletRequest request, HttpServletResponse response,
                              @ModelAttribute Account account, ModelMap model){
        if (session.getAttribute("student_user") != null) {
            System.out.println("Hello");
            return "payments";

        }
        return  "index" ;

    }

}

package com.example.thymeleafpj.controller;

import com.example.thymeleafpj.dto.ExamDto;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ExamController {

    //thymeleaf 하기전,
    /*
    @RequestMapping("/hello")
    public String hello(){
        return "/hello.html";
    }
    */

    //thymeleaf 하고 후,
    //Modal(data) test
    @RequestMapping("/hello")
    public String hello(){
        return "hello";
    }

    @RequestMapping("/datatest")
    public String dataTest(Model model){
        model.addAttribute("country", "South Korea");
        model.addAttribute("name", "Lee");
        return "datatest"; // html 파일명
    }

    //Model & View test
    @RequestMapping("mvtest")
    public ModelAndView modelAndViewTest(ModelAndView modelAndView){
        //데이터지정
        modelAndView.addObject("name", "Charles Lee");
        modelAndView.addObject("age", 20);

        //뷰 페이지 지정
        modelAndView.setViewName("mvtest");

        return modelAndView;
    }

    @RequestMapping("/utext")
    public String utext(Model model){
        model.addAttribute("tag", "<h2>send tag</h2>");
        return "utext";
    }

    @RequestMapping("pv/{num}") // 아래 @pathvariable 변수명과 같아야함
    public String pv1(Model model, @PathVariable int num){
        model.addAttribute("num", num);
        //System.out.println(num);
        return "pv1";
    }

    @RequestMapping("/pvmav/{num}")
    public ModelAndView pv1mav(ModelAndView mav, @PathVariable(name = "num") int numtest){
        mav.addObject("num", numtest);
        mav.setViewName("pv1");
        return mav;
    }

    //Get 방식
    @RequestMapping(value = "/form1", method = RequestMethod.GET)
    public String form1(Model model){
        return "form1";
    }

    //Post 방식
    @RequestMapping(value = "/form1", method = RequestMethod.POST)
    public String form2(Model model, @RequestParam("data1") String data1){
        model.addAttribute("data1", data1);
        return "form1";
    }

    //#1. multi values
    @RequestMapping(value = "/multi1", method = RequestMethod.GET)
    public ModelAndView multiFormPage(ModelAndView mav){
        mav.addObject("msg", "Clidk Submit button for multiple input values.");
        mav.setViewName("multi1");
        return mav;
    }
    @RequestMapping(value = "/multi1", method = RequestMethod.POST)
    public ModelAndView multiFormSend(
            @RequestParam("id") String id,
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("age") Integer age,
            @RequestParam("gender") String gender,
            ModelAndView mav){
        mav.addObject("id", id);
        mav.addObject("name", name);
        mav.addObject("email", email);
        mav.addObject("age", age);
        mav.addObject("gender", gender);
        mav.setViewName("multi1");
        return mav;
    }

    //#2. multi values: dto
    @RequestMapping(value = "/multidto", method = RequestMethod.GET)
    public ModelAndView multiFormPage2(
            @ModelAttribute("formData") ExamDto examDto,
            ModelAndView mav){
        mav.addObject("msg", "get req");
        mav.addObject("formData", examDto);
        mav.setViewName("multiDto");
        return mav;
    }
    @RequestMapping(value = "/multidto", method = RequestMethod.POST)
    public ModelAndView multiFormDtoSend(
            @ModelAttribute("formData") ExamDto examDto,
            ModelAndView mav){
        mav.addObject("formData", examDto);
        mav.setViewName("multiDto");
        return mav;
    }

    //Thymeleaf strings util methods
    @RequestMapping(value = "/strings", method = RequestMethod.GET)
    public ModelAndView viewStringUtil(ModelAndView mav){
        mav.addObject("msg", "Hello world");
        mav.setViewName("stringUtil");
        return mav;
    }

}

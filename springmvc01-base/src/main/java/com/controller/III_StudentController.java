package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @RequestMapping
 * 位置：类
 * 作用：在当前类中所有的处理请求的路径前添加前缀
 *
 * 例：/list.do --> student/list.do
 */
@Controller
@RequestMapping("/student")
public class III_StudentController {
    //查询
    @RequestMapping("/list.do")
    public ModelAndView list(){
        System.out.println("StudentController中的list方法...");
        return new ModelAndView("success");
    }
    //新增
    @RequestMapping("/save.do")
    public ModelAndView save(){
        System.out.println("StudentController中的save方法...");
        return new ModelAndView("success");
    }
    //修改
    @RequestMapping("/edit.do")
    public ModelAndView edit(){
        System.out.println("StudentController中的edit方法...");
        return new ModelAndView("success");
    }
    //删除
    @RequestMapping("/remove.do")
    public ModelAndView remove(){
        System.out.println("StudentController中的remove方法...");
        return new ModelAndView("success");
    }
}

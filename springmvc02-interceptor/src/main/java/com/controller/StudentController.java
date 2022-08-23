package com.controller;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/student")
public class StudentController {
    @RequestMapping("/list.do")
    public String list() {
        System.out.println("StudentController的list方法...");
        return "success";
    }

    @RequestMapping("/edit.do")
    public String edit() {
        System.out.println("StudentController的edit方法...");
        return "success";
    }

    @RequestMapping("/save.do")
    public String save() {
        System.out.println("StudentController的save方法...");
        return "success";
    }

    @RequestMapping("/remove.do")
    public String remove() {
        System.out.println("StudentController的remove方法...");
        return "success";
    }


}

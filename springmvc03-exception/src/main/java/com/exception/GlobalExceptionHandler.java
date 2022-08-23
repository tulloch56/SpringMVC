package com.exception;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import javax.servlet.http.HttpServletRequest;

/**
 * 全局异常处理器
 * 1.类上标注注解 @ControllerAdvice
 * 2.类中方法上标注注解 @ExceptionHandler
 */
@ControllerAdvice
public class GlobalExceptionHandler {
    /**
     * 当前方法仅处理的自定义异常
     */
    @ExceptionHandler(MyException.class)
    public String myExceptionHandler(HttpServletRequest request, MyException e) {
        request.setAttribute("message", "自定义异常出现 " + e.getMessage());
        return "error";
    }

    /**
     * 定义单独处理指定类型的异常...
     */

    /**
     * 在全局异常处理器中定义一个处理 Exception的异常方法
     * 防止漏掉的异常处理
     */
    @ExceptionHandler(Exception.class)
    public String exceptionHandler(HttpServletRequest request, Exception e) {
        request.setAttribute("message", "自带异常出现 " + e.getMessage());
        return "error";
    }
}
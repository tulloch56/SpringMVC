package com.exception;

/**
 * 运行时异常
 */
public class MyException extends RuntimeException{

    //自定义异常
    public MyException(String message){
        super(message);
    }
}

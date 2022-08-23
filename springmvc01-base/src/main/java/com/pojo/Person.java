package com.pojo;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Person {
    private Integer id;
    private String name;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date birthday;
    private Double score;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Double getScore() {
        return score;
    }

    public void setScore(Double score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "学生信息" +"\n"+
                "编号: " + id + "\n"+
                "名字: " + name +"\n"+
                "生日: " + birthday +"\n"+
                "成绩: " + score;
    }
}

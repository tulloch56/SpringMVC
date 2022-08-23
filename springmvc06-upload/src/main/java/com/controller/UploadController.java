package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

@Controller
public class UploadController {
    //单个文件上传
    /**
     * MultipartFile 是接受上传文件的对象
     * 由SpringMVC提供的文件上传解析器，将上传文件封装成MultipartFile对象
     */
    //必须是post请求
    @PostMapping("/upload")
    public String upload(MultipartFile file) throws IOException {
        //获取文件大小
        long fileSize = file.getSize();
        //获取文件原始名称
        String fileName = file.getOriginalFilename();
        System.out.println("文件名称：" + fileName);
        System.out.println("文件大小：" + fileSize);

        /**
         * 在传输文件之前的处理
         */
        // 1.将文件信息写入指定的数据库
        // 2.文件改名
        //创建新的文件名称
        // toString().replace("-","") 转成字符串并替换掉“-”
        // + fileName.substring(fileName.lastIndexOf(".")) 拼接 截取文件后缀名 (.xxx)
        String newFileName = UUID.randomUUID().toString().replace("-", "")
                + fileName.substring(fileName.lastIndexOf("."));
        // 3.分目录
        Date today = new Date();
        SimpleDateFormat s1 = new SimpleDateFormat("yyyy");
        String year = s1.format(today);
        SimpleDateFormat s2 = new SimpleDateFormat("MM");
        String month = s2.format(today);
        SimpleDateFormat s3 = new SimpleDateFormat("dd");
        String day = s3.format(today);
        File dist = new File("D:/pic/" + year + "/" + month + "/" + day);
        //判断目录是否存在
        if (!dist.exists()) {
            dist.mkdirs();
        }
        /**
         * 存储位置
         * 1.操作系统的文件系统
         * 2.文件服务器
         */
        //将文件存储指定的位置
        file.transferTo(new File(dist.getAbsolutePath()+"/"+newFileName));
        return "index";
    }
    //批量文件上传
    @PostMapping("/uploads")
    public String uploads(MultipartFile[] file) throws IOException {
        for (MultipartFile multipartFile : file){
            String fileName = multipartFile.getOriginalFilename();
            multipartFile.transferTo(new File("D:/pic/"+fileName));
        }
        return "index";
    }

    /**
     * 文件下载
     */
    @GetMapping("/download")
    public void download(String name, HttpServletResponse response) throws Exception {
        // content-disposition 响应头名称 (固定名称)  对象的值 attachment：附件
        response.addHeader("content-disposition","attachment;fileName"+name);
        //io流
        //FileInputStream 读取流  把指定目录文件读取到java程序中
        FileInputStream in = new FileInputStream("D:/pic/"+name);
        //写出流  文件输出
        OutputStream out = response.getOutputStream();
        //字节数组  批量读取字节 一次读1kb
        byte[] buffer = new byte[1024];
        //读取的返回值不为-1 代表是没有读完 继续循环  读完了就退出循环
        while (in.read(buffer)!=-1){
            //写出到指定的客户端
            out.write(buffer);
        }
        //做关闭操作
        in.close();
        out.flush();
        out.close();
    }
}

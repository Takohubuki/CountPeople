package com.cnsoft.counting.controller;

import com.cnsoft.counting.bean.Video;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@RequestMapping("/change")
@Controller
public class VideoChange {
    @RequestMapping("spot01")
    public String spot01(Model model, HttpSession session){
        Video video = new Video();
        video.setPath("video/4.mp4");
        session.setAttribute("video",video);
        return "redirect:/index.jsp";
    }

    @RequestMapping("spot02")
    public String spot02(Model model,HttpSession session){
        Video video = new Video();
        video.setPath("video/5.mp4");
        session.setAttribute("video",video);
        return "redirect:/index.jsp";
    }

    @RequestMapping("spot03")
    public String spot03(Model model,HttpSession session){
        Video video = new Video();
        video.setPath("video/6.mp4");
        session.setAttribute("video",video);
        return "redirect:/index.jsp";
    }
}

package com.cnsoft.counting.controller;

import com.cnsoft.counting.bean.Video;
import com.cnsoft.counting.bean.WarningInfo;
import com.cnsoft.counting.mappers.VideoMapper;
import com.cnsoft.counting.mappers.WarningInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@RequestMapping("/change")
@Controller
public class VideoChange {

    @Autowired
    WarningInfoMapper warningInfoMapper;

    @Autowired
    VideoMapper videoMapper;

    @RequestMapping("spot01")
    public String spot01(Model model, HttpSession session) throws ParseException {
//        Video video = new Video();
//        video.setPath("video/4.mp4");
        Video video = videoMapper.selectByTimeAndSpot("01");

        video.setCaptured_time_s(changePattern(video.getCaptured_time()));
        session.setAttribute("video",video);
        List<WarningInfo> warninglist = warningInfoMapper.selectByVideo(video.getId());
        session.setAttribute("warninglist",warninglist);
        return "redirect:/index.jsp";
    }

    @RequestMapping("spot02")
    public String spot02(Model model,HttpSession session) throws ParseException {
//        Video video = new Video();
//        video.setPath("video/5.mp4");
        Video video = videoMapper.selectByTimeAndSpot("02");

        video.setCaptured_time_s(changePattern(video.getCaptured_time()));
        session.setAttribute("video",video);
        List<WarningInfo> warninglist = warningInfoMapper.selectByVideo(video.getId());
        session.setAttribute("warninglist",warninglist);
        return "redirect:/index.jsp";
    }

    @RequestMapping("spot03")
    public String spot03(Model model,HttpSession session) throws ParseException {
//        Video video = new Video();
//        video.setPath("video/6.mp4");
        Video video = videoMapper.selectByTimeAndSpot("03");

        video.setCaptured_time_s(changePattern(video.getCaptured_time()));
        session.setAttribute("video",video);
        List<WarningInfo> warninglist = warningInfoMapper.selectByVideo(video.getId());
        session.setAttribute("warninglist",warninglist);
        return "redirect:/index.jsp";
    }

    @RequestMapping("/history")
    public String history(HttpSession session) throws ParseException {
        List<WarningInfo> warningInfos = warningInfoMapper.selectWarningsAndVideo();
//        for (WarningInfo w:
//             warningInfos) {
//            w.getVideo().setCaptured_time_s(changePattern(w.getVideo().getCaptured_time()));
//        }
        for (WarningInfo warningInfo : warningInfos) {
            Video video = warningInfo.getVideo();
            video.setCaptured_time_s(changePattern(video.getCaptured_time()));
            warningInfo.setVideo(video);
        }

        session.setAttribute("historywarning",warningInfos);
        return "history_warnings";
    }

    @RequestMapping("/index")
    public String index(){
        return "redirect:/index.jsp";
    }


    public static String changePattern(Date date) throws ParseException {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String format = sdf.format(date);
        return format;
    }
}

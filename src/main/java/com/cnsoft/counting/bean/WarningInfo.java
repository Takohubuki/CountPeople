package com.cnsoft.counting.bean;

public class WarningInfo {
    private Integer id;

    private String video_id;

    private String warning_start;

    private String warning_end;

    private Video video;

    public Video getVideo() {
        return video;
    }

    @Override
    public String toString() {
        return "" +
                id + "：" +
                "视频ID'" + video_id + '\'' +
                ", 异常时间段：" + warning_start +
                "--" + warning_end +
                ",\n" + video;
    }

    public void setVideo(Video video) {
        this.video = video;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getVideo_id() {
        return video_id;
    }

    public void setVideo_id(String video_id) {
        this.video_id = video_id == null ? null : video_id.trim();
    }

    public String getWarning_start() {
        return warning_start;
    }

    public void setWarning_start(String warning_start) {
        this.warning_start = warning_start == null ? null : warning_start.trim();
    }

    public String getWarning_end() {
        return warning_end;
    }

    public void setWarning_end(String warning_end) {
        this.warning_end = warning_end == null ? null : warning_end.trim();
    }
}
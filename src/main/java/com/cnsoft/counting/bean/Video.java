package com.cnsoft.counting.bean;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Video {
    private String id;

    private String path;

    private Integer threshold;

    private Date captured_time;

    private String captured_spot;

    @Override
    public String toString() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String format = sdf.format(captured_time);
        return

                "\n阈值：" + threshold +
                ", 拍摄时间：" + format +
                ", 拍摄地点：'" + captured_spot;
    }

    private List<WarningInfo> warningInfos;

    public List<WarningInfo> getWarningInfos() {
        return warningInfos;
    }

    public void setWarningInfos(List<WarningInfo> warningInfos) {
        this.warningInfos = warningInfos;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path == null ? null : path.trim();
    }

    public Integer getThreshold() {
        return threshold;
    }

    public void setThreshold(Integer threshold) {
        this.threshold = threshold;
    }

    public Date getCaptured_time() {
        return captured_time;
    }

    public void setCaptured_time(Date captured_time) {
        this.captured_time = captured_time;
    }

    public String getCaptured_spot() {
        return captured_spot;
    }

    public void setCaptured_spot(String captured_spot) {
        this.captured_spot = captured_spot == null ? null : captured_spot.trim();
    }
}
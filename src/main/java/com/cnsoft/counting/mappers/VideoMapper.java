package com.cnsoft.counting.mappers;

import com.cnsoft.counting.bean.Video;
import com.cnsoft.counting.bean.VideoExample;
import java.util.List;

import com.cnsoft.counting.bean.WarningInfo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;


public interface VideoMapper {
    long countByExample(VideoExample example);

    int deleteByExample(VideoExample example);

    int deleteByPrimaryKey(String id);

    int insert(Video record);

    int insertSelective(Video record);

    List<Video> selectByExample(VideoExample example);

    Video selectByPrimaryKey(String id);

    int updateByExampleSelective(@Param("record") Video record, @Param("example") VideoExample example);

    int updateByExample(@Param("record") Video record, @Param("example") VideoExample example);

    int updateByPrimaryKeySelective(Video record);

    int updateByPrimaryKey(Video record);

    Video selectByTimeAndSpot(String spot);

    List<Video> selectWarningsAndVideo();
}
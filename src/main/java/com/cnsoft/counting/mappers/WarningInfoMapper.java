package com.cnsoft.counting.mappers;

import com.cnsoft.counting.bean.WarningInfo;
import com.cnsoft.counting.bean.WarningInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface WarningInfoMapper {
    long countByExample(WarningInfoExample example);

    int deleteByExample(WarningInfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(WarningInfo record);

    int insertSelective(WarningInfo record);

    List<WarningInfo> selectByVideo(String video_id);

    WarningInfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") WarningInfo record, @Param("example") WarningInfoExample example);

    int updateByExample(@Param("record") WarningInfo record, @Param("example") WarningInfoExample example);

    int updateByPrimaryKeySelective(WarningInfo record);

    int updateByPrimaryKey(WarningInfo record);
}
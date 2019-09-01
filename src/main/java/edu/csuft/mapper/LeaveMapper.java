package edu.csuft.mapper;

import edu.csuft.pojo.Dimission;
import edu.csuft.pojo.Leave;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface LeaveMapper {
    List<Leave> getLeavesinfo(@Param("limit") int limit, @Param("offset") int offset);

    void approveLeave(@Param("id") int id);

    int getEID(int id);

    String getStatus(int id);
}

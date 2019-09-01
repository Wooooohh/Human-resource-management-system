package edu.csuft.mapper;

import edu.csuft.pojo.Dimission;
import edu.csuft.pojo.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DimissionMapper {


    List<Dimission> getDimissionsinfo(@Param("limit") int limit, @Param("offset") int offset);

    void approveDimission(String appdate);

    int getEID(String appdate);

    String getStatus(String appdate);
}

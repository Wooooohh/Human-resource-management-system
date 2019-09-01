package edu.csuft.mapper;

import org.apache.ibatis.annotations.Param;

public interface DepartmentMapper {

    int seekDepartment(@Param("department") String department);

    String getStatus(String appdate);
}

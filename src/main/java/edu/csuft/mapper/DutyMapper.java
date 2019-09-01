package edu.csuft.mapper;

import org.apache.ibatis.annotations.Param;

public interface DutyMapper {
    int seekDutyId(@Param("position") String position);
}

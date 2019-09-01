package edu.csuft.mapper;

import org.apache.ibatis.annotations.Param;

public interface AuthorityMapper {

    int seekAuthorityId(@Param("leave") int leave,@Param("dimission") int dimission);

    int getDimissionAuthority(int eid);

    int getLeaveAuthority(int eid);
}

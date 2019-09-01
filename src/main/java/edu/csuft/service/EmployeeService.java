package edu.csuft.service;

import edu.csuft.pojo.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


public interface EmployeeService {


//    User exists(User user);

    Employee login(@Param("id") String id,@Param("password") String password);

    Employee get(@Param("id") int id);

    int update(Employee employee);

    int getMaxId();

    void addDimission(@Param("id") int id,@Param("reason") String reason);

    boolean isDimission(int id);

    void addLeave(@Param("id") int id, @Param("leavedate") String leavedate, @Param("returndate") String returndate,@Param("reason") String reason);

    String getDepartmentByID(String id);
}

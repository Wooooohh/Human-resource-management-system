package edu.csuft.mapper;

import edu.csuft.pojo.Dimission;
import edu.csuft.pojo.Employee;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

public interface EmployeeMapper {

    List<Employee> findAllEmployee(@Param("limit") int limit, @Param("offset") int offset);

    Employee exist(@Param("id") String id,@Param("password") String password);

    int getCount();

    Employee get(int id);

    int update(Employee employee);

    List<Employee> getEmployeesInfo(@Param("limit") int limit,@Param("offset") int offset);

    int getMaxId();

    void createEmployee(@Param("id") int id, @Param("name") String name,
                        @Param("phone") String phone,
                        @Param("sex") String sex, @Param("email")String email,@Param("hiredate")String hiredate,
                        @Param("birthday")String birthday,@Param("education")String education,@Param("address") String address,
                        @Param("marriage") String marriage, @Param("e_a_id") int authorityid, @Param("e_d_id") int departmentid, @Param("e_du_id") int dutyid);

    void deleteEmployee(@Param("id") int id);

    void addDimission(@Param("id") int id,@Param("reason") String reason);

    Dimission isDimission(@Param("id") int id);

    void addLeave(@Param("id") int id, @Param("leavedate") String leavedate, @Param("returndate") String returndate,@Param("reason")String reason);

    String getDepartmentByID(String id);

    void updateStatus(@Param("status") String status,@Param("id") int id);
}

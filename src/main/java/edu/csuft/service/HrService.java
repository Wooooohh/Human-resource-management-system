package edu.csuft.service;

import edu.csuft.pojo.Dimission;
import edu.csuft.pojo.Employee;
import edu.csuft.pojo.Leave;

import java.util.List;
import java.util.Map;

public interface HrService {

    List<Employee> findAllEmployee(int limit,int offset);

    int getCount();

    List<Employee> getEmployeesInfo(int limit,int offset);

    void createEmployee(Map<String, String> map);

    void deleteEmployee(int id);

    List<Dimission> getDimissionsinfo(int limit, int i);

    List<Leave> getLeavesinfo(int limit, int i);

    int approveDimission(String appdate,int operatorId);

    int approveLeave(int id,int operatorId);

}

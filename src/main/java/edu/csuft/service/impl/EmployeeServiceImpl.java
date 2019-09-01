package edu.csuft.service.impl;

import edu.csuft.mapper.EmployeeMapper;
import edu.csuft.pojo.Dimission;
import edu.csuft.pojo.Employee;
import edu.csuft.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("EmployeeService")
class EmployeeServiceImpl implements EmployeeService {

    //注入mapper
    @Autowired
    private EmployeeMapper employeeMapper;

    @Override
    public Employee login(String id, String password) {
        return employeeMapper.exist(id,password);
    }

    @Override
    public Employee get(int id) {
        return employeeMapper.get(id);
    }

    @Override
    public int update(Employee employee) {
        return employeeMapper.update(employee);
    }

    @Override
    public int getMaxId() {
        return employeeMapper.getMaxId();
    }

    @Override
    public void addDimission(int id,String reason) {
        employeeMapper.addDimission(id,reason);
    }

    @Override
    public boolean isDimission(int id) {
        Dimission dimission =employeeMapper.isDimission(id);
        if (dimission==null)
            return false;
        if(dimission.getStatus().equals("正在审批"))
            return true;
        return false;
    }

    @Override
    public void addLeave(int id, String leavedate, String returndate,String reason) {
        employeeMapper.addLeave(id,leavedate,returndate,reason);
    }

    @Override
    public String getDepartmentByID(String id) {
        return employeeMapper.getDepartmentByID(id);
    }

}

package edu.csuft.service.impl;

import edu.csuft.mapper.*;
import edu.csuft.pojo.Dimission;
import edu.csuft.pojo.Employee;
import edu.csuft.pojo.Leave;
import edu.csuft.service.HrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service("hrService")
public class HrServiceImpl implements HrService{

    //注入mapper
    @Autowired
    private EmployeeMapper employeeMapper;

    //注入mapper
    @Autowired
    private DepartmentMapper departmentMapper;

    //注入mapper
    @Autowired
    private AuthorityMapper authorityMapper;

    //注入mapper
    @Autowired
    private DutyMapper dutyMapper;

    //注入mapper
    @Autowired
    private DimissionMapper dimissionMapper;

    //注入mapper
    @Autowired
    private LeaveMapper leaveMapper;

    @Override
    public List<Employee> findAllEmployee(int limit, int offset) {
        return employeeMapper.findAllEmployee(limit,offset);
    }

    @Override
    public int getCount() {
        return employeeMapper.getCount();
    }

    @Override
    public List<Employee> getEmployeesInfo(int limit, int offset) {
        return employeeMapper.getEmployeesInfo(limit,offset);
    }
    @Transactional
    @Override
    public void createEmployee(Map<String, String> map) {
        int id = employeeMapper.getMaxId()+1;
        System.out.println(id);
        //确定权限
        int leave;
        int dimission;
        if(map.get("leave")==null)
            leave=0;
        else{
            leave = map.get("leave").equals("on")?1:0;
        }
        if(map.get("dimission")==null)
            dimission=0;
        else{
            dimission = map.get("dimission").equals("on")?1:0;
        }

        int authorityid=authorityMapper.seekAuthorityId(leave,dimission);

        //确定部门编号
        System.out.println(map.get("department"));
        int departmentid =departmentMapper.seekDepartment(map.get("department"));

        //确定职位编号

        int dutyid=dutyMapper.seekDutyId(map.get("position"));


        //创建职员
        employeeMapper.createEmployee(id,map.get("name"),map.get("phone"),map.get("sex"),map.get("email"),map.get("date"),map.get("date1"),map.get("education"),map.get("province")+map.get("city")+map.get("area"),map.get("marriage"),authorityid,departmentid,dutyid);

    }

    @Override
    public void deleteEmployee(int id) {
        employeeMapper.deleteEmployee(id);
    }

    @Override
    public List<Dimission> getDimissionsinfo(int limit, int offset) {
        return dimissionMapper.getDimissionsinfo(limit,offset);
    }

    @Override
    public List<Leave> getLeavesinfo(int limit, int offset) {
        return leaveMapper.getLeavesinfo(limit,offset);
    }

    @Override
    public int approveDimission(String appdate,int operator) {
        int eid =dimissionMapper.getEID(appdate);
        int code=3;
        String status = dimissionMapper.getStatus(appdate);
        if(status.equals("已审批")) {
            code = 2;
        }else{
            int dimissionAuthority = authorityMapper.getDimissionAuthority(operator);
            System.out.println(dimissionAuthority);
            if (dimissionAuthority == 1) {
                employeeMapper.updateStatus("离职", eid);
                dimissionMapper.approveDimission(appdate);
                code = 1;
            } else {
                code = 0;
            }
        }
        return code;
    }

    @Override
    public int approveLeave(int id,int operator) {
        int eid= leaveMapper.getEID(id);
        int code=3;
        String status = leaveMapper.getStatus(id);
        if(status.equals("已审批")) {
            code = 2;
        }else{
            System.out.println(operator);
            System.out.println(id);
            System.out.println(eid);
            int leaveAuthority = authorityMapper.getLeaveAuthority(operator);
            System.out.println(leaveAuthority);
            if (leaveAuthority == 1) {
                employeeMapper.updateStatus("休假", eid);
                leaveMapper.approveLeave(id);
                code = 1;
            } else {
                code = 0;
            }
        }
        return code;
    }

}

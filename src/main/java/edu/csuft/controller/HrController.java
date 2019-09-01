package edu.csuft.controller;


import edu.csuft.pojo.Dimission;
import edu.csuft.pojo.Employee;
import edu.csuft.pojo.Leave;
import edu.csuft.service.EmployeeService;
import edu.csuft.service.HrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


import java.util.*;

@Controller
@RequestMapping("/hr")
@SessionAttributes("Employee")
public class HrController {


    @Autowired
    HrService hrService;

    @Autowired
    EmployeeService employeeService;

    //跳转员工个人信息查询界面
    @RequestMapping("/allemployees")
    public String getEmployees(@ModelAttribute("Employee") Employee employee, ModelMap model) {
        return "/hr/h_allemployees";
    }

    //跳转员详细工信息查询界面
    @RequestMapping("/employeesinfo")
    public String getEmployeesinfo(@ModelAttribute("Employee") Employee employee, ModelMap model) {
        return "/hr/h_employeesinfo";
    }

    //跳转初始登录界面
    @RequestMapping("/index")
    public String getIndex(@ModelAttribute("Employee") Employee employee, ModelMap model) {
        return "/hr/h_index";
    }

    //跳转员工入职界面
    @RequestMapping("/entry")
    public String getEntry(@ModelAttribute("Employee") Employee employee, ModelMap model) {
        return "/hr/h_entry";
    }

    //跳转个人信息页面
    @RequestMapping("/info")
    public String getInfo(@ModelAttribute("Employee") Employee employee, ModelMap model) {
        return "/hr/h_info";
    }

    //跳转休假界面
    @RequestMapping("/leave")
    public String getLeave(ModelMap model) {
        return "/hr/h_leave";
    }

    //跳转
    @RequestMapping("/leavesinfo")
    public String getLeavesInfo(ModelMap model) {
        return "/hr/h_leavesinfo";
    }
    //跳转
    @RequestMapping("/dimissionsinfo")
    public String getDimissionsInfo(ModelMap model) {
        return "/hr/h_dimissionsinfo";
    }


    //跳转离职界面
    @RequestMapping("/dimission")
    public String getDimission(ModelMap model) {
        return "hr/h_dimission";
    }


    //获取员工个人信息
    @RequestMapping("/employees")
    @ResponseBody
    public Map<String, Object> getEmployees(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int limit) {
        List<Employee> list = hrService.findAllEmployee(limit, 10 * (page - 1));
        Map<String, Object> map = new HashMap<>();
        int count = hrService.getCount();
        map.put("code", 0);
        map.put("data", list);
        map.put("count", count);
        map.put("limit", 10);
        map.put("page", 1);

        return map;
    }

    //获取员工离职信息
    @RequestMapping("/getDimissionsinfo")
    @ResponseBody
    public Map<String, Object> getDimissionsinfo(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int limit) {
        List<Dimission> list = hrService.getDimissionsinfo(limit, 10 * (page - 1));
        Map<String, Object> map = new HashMap<>();
//        for (Dimission d:list){
//            System.out.println(d);
//        }
        int count = hrService.getCount();
        map.put("code", 0);
        map.put("data", list);
        map.put("count", count);
        map.put("limit", 10);
        map.put("page", 1);

        return map;
    }

    //获取员工请假信息
    @RequestMapping("/getLeavesinfo")
    @ResponseBody
    public Map<String, Object> getLeavesinfo(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int limit) {
        List<Leave> list = hrService.getLeavesinfo(limit, 10 * (page - 1));
        Map<String, Object> map = new HashMap<>();
//        for (Leave d:list){
//            System.out.println(d);
//        }
        int count = hrService.getCount();
        map.put("code", 0);
        map.put("data", list);
        map.put("count", count);
        map.put("limit", 10);
        map.put("page", 1);

        return map;
    }

    //获取员工详细信息
    @RequestMapping("/employeesdetails")
    @ResponseBody
    public Map<String, Object> getEmployeesinfo(@RequestParam(defaultValue = "1") int page, @RequestParam(defaultValue = "10") int limit) {

        List<Employee> list = hrService.getEmployeesInfo(limit, 10 * (page - 1));
        Map<String, Object> map = new HashMap<>();

        int count = hrService.getCount();
        map.put("data", list);
        map.put("count", count);
        map.put("limit", 10);
        map.put("page", 1);
        map.put("code", 0);
        return map;
    }


    //添加员工
    @PostMapping("/addemployee")
    @ResponseBody
    public Map<String, Object> addEmployee(@RequestBody Map<String, String> map) {

//        System.out.println(map.toString());

        try {
            hrService.createEmployee(map);
        } catch (Exception e) {
            e.printStackTrace();
        }
//        int id=employeeService.getMaxId()+1;

//        hrService.addEmployee(id,map.get("name"),map.get("password"),map.get("phone"),map.get("email"),map.get("date"),map.get("department"))


        Map<String, Object> ret = new HashMap<>();
        ret.put("m", "ok");
        return ret;
    }

    //删除员工
    @DeleteMapping("/deleteemployee/{id}")
    @ResponseBody
    public Map<String, Object> deleteEmployee(@PathVariable int id) {
        hrService.deleteEmployee(id);
        Map<String, Object> ret = new HashMap<>();
        ret.put("m", "ok");
        return ret;
    }

    @RequestMapping("/approvedimission/{appdate}")
    @ResponseBody
    public Map<String, Object> approveDimission(@PathVariable String appdate,@ModelAttribute("Employee") Employee employee, ModelMap model) {
        Map<String, Object> ret = new HashMap<>();
        int operatorId = employee.getId();
        int code=hrService.approveDimission(appdate,operatorId);
        if(code==1) {
            ret.put("m", "ok");
        }else if(code==0){
            ret.put("m","权限不够");
        }else {
            ret.put("m","不能重复审批");
        }
        return ret;
    }

    @RequestMapping("/approveleave/{leaveid}")
    @ResponseBody
    public Map<String, Object> approveLeave(@PathVariable int leaveid,@ModelAttribute("Employee") Employee employee, ModelMap model) {
        Map<String, Object> ret = new HashMap<>();
        int operatorId = employee.getId();
        int code =hrService.approveLeave(leaveid,operatorId);
        if(code==1) {
            ret.put("m", "ok");
        }else if(code==0){
            ret.put("m", "权限不够");
        }else{
            ret.put("m","不能重复批准");
        }
        return ret;
    }
}

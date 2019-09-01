package edu.csuft.controller;


import edu.csuft.pojo.Employee;
import edu.csuft.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/employee")
@SessionAttributes("Employee")
public class EmployeeController {

    @Autowired
    EmployeeService employeeService;

    @RequestMapping("/info")
    public String getInfo(ModelMap model){
        return "employee/e_info";
    }

    //跳转初始登录界面
    @RequestMapping("/index")
    public String getIndex(@ModelAttribute("Employee") Employee employee, ModelMap model) {
        return "/employee/h_index";
    }

    //跳转请假界面
    @RequestMapping("/leave")
    public String getLeave(ModelMap model){
        return "employee/e_leave";
    }

    //跳转申请离职界面
    @RequestMapping("/dimission")
    public String getDimission(ModelMap model){
        return "employee/e_dimission";
    }

    //员工登录
    @RequestMapping("/login")
    public String login(@RequestParam("id") String id, @RequestParam("password") String password, ModelMap model){
        System.out.println(id+"   "+password);
        Employee employee = employeeService.login(id,password);
        if(employee==null)
          return null;
        model.addAttribute("Employee",employee);
        if(employeeService.getDepartmentByID(id).equals("人力资源部"))
            return "hr/h_index";
        return "employee/e_index";
    }

    //修改员工个人信息
    @PostMapping("/update")
    @ResponseBody
    public Map<String, Object> update(@RequestBody Employee employee, ModelMap model){
        int ret = employeeService.update(employee);
        Map<String,Object> map = new HashMap<>();
        if(ret==1) {
            map.put("m", "修改成功");
            model.replace("Employee",employee);
        }
        else
            map.put("m","修改失败");
        map.put("data",employee);
        return map;
    }

    @PostMapping("/appdimission")
    @ResponseBody
    public Map<String, Object> addDimission(@RequestBody Map<String, String> map,@ModelAttribute("Employee") Employee employee, ModelMap model) {
        Map<String, Object> ret = new HashMap<>();
//        if (employeeService.isDimission(employee.getId()))
//
//        {
//            System.out.println(employee.getId());
//            ret.put("m", "您已经提交过一次了，请勿重复提交");
//        return ret;}

        employeeService.addDimission(employee.getId(),map.get("reason"));

        ret.put("m", "ok");
        return ret;
    }
    @PostMapping("/appleave")
    @ResponseBody
    public Map<String, Object> addLeave(@RequestBody Map<String, String> map,@ModelAttribute("Employee") Employee employee, ModelMap model) {
        Map<String, Object> ret = new HashMap<>();
//        if (employeeService.isDimission(employee.getId()))
//
//        {
//            System.out.println(employee.getId());
//            ret.put("m", "您已经提交过一次了，请勿重复提交");
//        return ret;}
        System.out.println(map);
        employeeService.addLeave(employee.getId(),map.get("leavedate"),map.get("returndate"),map.get("reason"));
        employeeService.addDimission(employee.getId(),map.get("reason"));

        ret.put("m", "ok");
        return ret;
    }
}

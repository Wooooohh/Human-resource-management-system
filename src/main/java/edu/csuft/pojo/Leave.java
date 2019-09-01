package edu.csuft.pojo;

public class Leave {

    int id;
    int eid;
    String name;
    String departmentname;
    String dutyname;
    String leaveday;
    String returnday;
    String status;
    String reason;

    Leave(){

    }

    @Override
    public String toString() {
        return "Leave{" +
                "id=" + id +
                ", eid=" + eid +
                ", name='" + name + '\'' +
                ", departmentname='" + departmentname + '\'' +
                ", dutyname='" + dutyname + '\'' +
                ", leaveday='" + leaveday + '\'' +
                ", returnday='" + returnday + '\'' +
                ", status='" + status + '\'' +
                ", reason='" + reason + '\'' +
                '}';
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDepartmentname() {
        return departmentname;
    }

    public void setDepartmentname(String departmentname) {
        this.departmentname = departmentname;
    }

    public String getDutyname() {
        return dutyname;
    }

    public void setDutyname(String dutyname) {
        this.dutyname = dutyname;
    }

    public String getLeaveday() {
        return leaveday;
    }

    public void setLeaveday(String leaveday) {
        this.leaveday = leaveday;
    }

    public String getReturnday() {
        return returnday;
    }

    public void setReturnday(String returnday) {
        this.returnday = returnday;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }
}

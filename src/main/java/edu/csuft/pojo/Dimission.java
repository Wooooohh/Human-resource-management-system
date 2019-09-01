package edu.csuft.pojo;

public class Dimission {
    int id;
    int eid;
    String name;
    String departmentname;
    String dutyname;
    String appdate;
    String status;
    String reason;

    Dimission(){


    }

    @Override
    public String toString() {
        return "Dimission{" +
                "id=" + id +
                ", eid=" + eid +
                ", name='" + name + '\'' +
                ", departmentname='" + departmentname + '\'' +
                ", dutyname='" + dutyname + '\'' +
                ", appdate='" + appdate + '\'' +
                ", status='" + status + '\'' +
                ", reason='" + reason + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEid() {
        return eid;
    }

    public void setEid(int eid) {
        this.eid = eid;
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

    public String getAppdate() {
        return appdate;
    }

    public void setAppdate(String appdate) {
        this.appdate = appdate;
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

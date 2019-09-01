package edu.csuft.pojo;

public class Employee {

    private int id;
    private String name;
    private String password;
    private String phone;
    private String sex;
    private String address;
    private String marriage;
    private String birthday;
    private String education;
    private String hireday;
    private String hobbies;
    private String status;
    private String email;
    private String departmentname;
    private int departmentid;
    private String dutyname;
    private int dutyid;

    public Employee(){

    }

    public Employee(int id, String name, String password) {
        this.id = id;
        this.name = name;
        this.password = password;
    }

    public Employee(int id, String name, String password, String phone, String sex, String address, String marriage, String birthday, String education, String hireday, String hobbies, String status, String email, String departmentname, int departmentid, String dutyname, int dutyid) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.sex = sex;
        this.address = address;
        this.marriage = marriage;
        this.birthday = birthday;
        this.education = education;
        this.hireday = hireday;
        this.hobbies = hobbies;
        this.status = status;
        this.email = email;
        this.departmentname = departmentname;
        this.departmentid = departmentid;
        this.dutyname = dutyname;
        this.dutyid = dutyid;
    }

    @Override
    public String toString() {
        return "Employee{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", sex='" + sex + '\'' +
                ", address='" + address + '\'' +
                ", marriage='" + marriage + '\'' +
                ", birthday='" + birthday + '\'' +
                ", education='" + education + '\'' +
                ", hireday='" + hireday + '\'' +
                ", hobbies='" + hobbies + '\'' +
                ", status='" + status + '\'' +
                ", email='" + email + '\'' +
                ", departmentname='" + departmentname + '\'' +
                ", departmentid=" + departmentid +
                ", dutyname='" + dutyname + '\'' +
                ", dutyid=" + dutyid +
                '}';
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getMarriage() {
        return marriage;
    }

    public void setMarriage(String marriage) {
        this.marriage = marriage;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getEducation() {
        return education;
    }

    public void setEducation(String education) {
        this.education = education;
    }

    public String getHireday() {
        return hireday;
    }

    public void setHireday(String hireday) {
        this.hireday = hireday;
    }

    public String getHobbies() {
        return hobbies;
    }

    public void setHobbies(String hobbies) {
        this.hobbies = hobbies;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDepartmentname() {
        return departmentname;
    }

    public void setDepartmentname(String departmentname) {
        this.departmentname = departmentname;
    }

    public int getDepartmentid() {
        return departmentid;
    }

    public void setDepartmentid(int departmentid) {
        this.departmentid = departmentid;
    }

    public String getDutyname() {
        return dutyname;
    }

    public void setDutyname(String dutyname) {
        this.dutyname = dutyname;
    }

    public int getDutyid() {
        return dutyid;
    }

    public void setDutyid(int dutyid) {
        this.dutyid = dutyid;
    }
}

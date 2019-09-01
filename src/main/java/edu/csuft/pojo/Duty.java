package edu.csuft.pojo;

public class Duty {
    private int dutyId;
    private String dutyName;
    private String dutyContent;

    public Duty(int dutyId, String dutyName) {
        this.dutyId = dutyId;
        this.dutyName = dutyName;
    }

    public int getDutyId() {
        return dutyId;
    }

    public void setDutyId(int dutyId) {
        this.dutyId = dutyId;
    }

    public String getDutyName() {
        return dutyName;
    }

    public void setDutyName(String dutyName) {
        this.dutyName = dutyName;
    }

    public String getDutyContent() {
        return dutyContent;
    }

    public void setDutyContent(String dutyContent) {
        this.dutyContent = dutyContent;
    }
}

package com.example.domain;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.data.annotation.Id;

public class Mycollection1 implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    private String id;

    private String hostName;
    private String applicationName;
    private String appserver;
    private String DBVersion;
    private String Appstatus;
    private String DBstatus;
    private String OS;
    private String health;
    private String javaVersion;
    private String type;
    private String available_size;
    private String available_size_percentage;

    private Date date;

    private String user;

    private List<Mycollection1> ancibleList =new ArrayList<Mycollection1>();

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getHostName() {
        return hostName;
    }

    public void setHostName(String hostName) {
        this.hostName = hostName;
    }

    public String getApplicationName() {
        return applicationName;
    }

    public void setApplicationName(String applicationName) {
        this.applicationName = applicationName;
    }

    public String getAppserver() {
        return appserver;
    }

    public void setAppserver(String appserver) {
        this.appserver = appserver;
    }

    public String getDBVersion() {
        return DBVersion;
    }

    public void setDBVersion(String DBVersion) {
        this.DBVersion = DBVersion;
    }

    public String getAppstatus() {
        return Appstatus;
    }

    public void setAppstatus(String appstatus) {
        Appstatus = appstatus;
    }

    public String getDBstatus() {
        return DBstatus;
    }

    public void setDBstatus(String DBstatus) {
        this.DBstatus = DBstatus;
    }

    public String getOS() {
        return OS;
    }

    public void setOS(String OS) {
        this.OS = OS;
    }

    public String getHealth() {
        return health;
    }

    public void setHealth(String health) {
        this.health = health;
    }

    public String getJavaVersion() {
        return javaVersion;
    }

    public void setJavaVersion(String javaVersion) {
        this.javaVersion = javaVersion;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAvailable_size() {
        return available_size;
    }

    public void setAvailable_size(String available_size) {
        this.available_size = available_size;
    }

    public String getAvailable_size_percentage() {
        return available_size_percentage;
    }

    public void setAvailable_size_percentage(String available_size_percentage) {
        this.available_size_percentage = available_size_percentage;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public List<Mycollection1> getAncibleList() {
        return ancibleList;
    }

    public void setAncibleList(List<Mycollection1> ancibleList) {
        this.ancibleList = ancibleList;
    }
}

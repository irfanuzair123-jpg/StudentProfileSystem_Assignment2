package com.student;
import java.io.Serializable;

public class ProfileBean implements Serializable {
    private String studentId, name, program, email, hobbies, intro;

    public ProfileBean() {} 

    public ProfileBean(String studentId, String name, String program, String email, String hobbies, String intro) {
        this.studentId = studentId; this.name = name; this.program = program;
        this.email = email; this.hobbies = hobbies; this.intro = intro;
    }

    public String getStudentId() { return studentId; }
    public String getName() { return name; }
    public String getProgram() { return program; }
    public String getEmail() { return email; }
    public String getHobbies() { return hobbies; }
    public String getIntro() { return intro; }
}
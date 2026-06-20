package com.student.model;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
public class Voter {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int voterId;

    private String name;
    private int age;
    private String gender;
    private String email;
    private String mobile;
    private String address;

    private String username;
    private String password;
}
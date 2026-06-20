package com.student;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan("com.student")
public class VoterManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(VoterManagementApplication.class, args);
		System.out.println("application started");
	}

}

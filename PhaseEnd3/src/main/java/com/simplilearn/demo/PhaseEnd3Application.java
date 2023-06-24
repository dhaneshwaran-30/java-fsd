package com.simplilearn.demo;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
@SpringBootApplication
@ComponentScan("com.simplilearn.demo")
@EnableJpaRepositories

public class PhaseEnd3Application {

	public static void main(String[] args) {
		SpringApplication.run(PhaseEnd3Application.class, args);
	}

}

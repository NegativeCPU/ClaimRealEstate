package com.ClaimRealEstate.springmvcRealEstate;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages="com.ClaimRealEstate")
public class SpringMvcRealEstateApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(SpringMvcRealEstateApplication.class, args);
		
		
	}

}

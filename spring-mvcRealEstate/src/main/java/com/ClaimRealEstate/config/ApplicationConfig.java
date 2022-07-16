package com.ClaimRealEstate.config;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EnableJpaRepositories(basePackages = "com.ClaimRealEstate.repository")
@EntityScan(basePackages = "com.ClaimRealEstate.entity")
public class ApplicationConfig {

}

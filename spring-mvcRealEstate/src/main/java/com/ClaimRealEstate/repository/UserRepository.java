package com.ClaimRealEstate.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ClaimRealEstate.entity.User;

public interface UserRepository extends JpaRepository<User, String>{
	@Query("SELECT s FROM User s WHERE s.email = ?1 AND s.password = ?2")
	User loginUser(String email, String password);
}

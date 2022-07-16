package com.ClaimRealEstate.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ClaimRealEstate.entity.User;
import com.ClaimRealEstate.repository.UserRepository;

@Service
public class UserService {
	@Autowired
	UserRepository userRepository;

	public void saveUser(User u1) {
		userRepository.save(u1);
	}

	public List<User> getAllUsers() {
		return userRepository.findAll();
	}

	public void deleteUserById(String email) {
		userRepository.deleteById(email);
	}

	public void deleteAllUser() {
		userRepository.deleteAll();
	}

	public User findUserLogin(String email, String password) {
		return userRepository.loginUser(email, password);
	}

	public Optional<User> getUserById(String email) {
		return userRepository.findById(email);
	}
}

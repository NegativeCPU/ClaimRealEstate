package com.ClaimRealEstate.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ClaimRealEstate.entity.Property;
import com.ClaimRealEstate.repository.PropertyRepository;

@Service
public class PropertyService {
	@Autowired
	PropertyRepository propertyRepository;

	public void saveProperty(Property p1) {
		propertyRepository.save(p1);
	}

	public List<Property> getAllProperties() {
		return propertyRepository.findAll();
	}

	public void deletePropertyById(Integer id) {
		propertyRepository.deleteById(id);
	}

	public void deleteAllProperties() {
		propertyRepository.deleteAll();
	}

	public Optional<Property> getPropertyById(Integer id) {
		return propertyRepository.findById(id);
	}
}

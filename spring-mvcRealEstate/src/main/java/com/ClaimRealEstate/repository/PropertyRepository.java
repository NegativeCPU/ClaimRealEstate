package com.ClaimRealEstate.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ClaimRealEstate.entity.Property;

public interface PropertyRepository extends JpaRepository<Property, Integer> {

}

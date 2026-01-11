package com.siddique.usedcarsell11.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.siddique.usedcarsell11.entities.UsedCars;
@Repository
public interface UsedCarsRepo extends JpaRepository<UsedCars, Integer>{
	
Long countByStatus(String status);
}

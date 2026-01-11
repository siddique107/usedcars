package com.siddique.usedcarsell11.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.siddique.usedcarsell11.entities.UsedCars;
import com.siddique.usedcarsell11.repositories.UsedCarsRepo;

@Service
public class UsedCarService {
   @Autowired
	UsedCarsRepo usedrepo;
   
   public String addNewUser(UsedCars cars) {
	usedrepo.save(cars);
	return "success";
   }
   public List<UsedCars> getAllCars(){
	   return usedrepo.findAll();
   }
  public String deleteById(int carid) {
	  
		  if(usedrepo.existsById(carid)) {
			  usedrepo.deleteById(carid);
	        return "Car with ID " + carid + " deleted successfully!";
		  }
		  else {
		        return "Car with ID " + carid + " not found!";

		  }
             
	  }

	public long AccountCount() {
		Long totalcars= usedrepo.count();
		return totalcars;

	}
	public long carAvailable(String status) {
	    // Get count from repo
	    Long availableCars = usedrepo.countByStatus(status);
	    
	    // Return the count
	    return availableCars;
	}

  public UsedCars getById(int carid) {
	    return usedrepo.getById(carid);
	}

}
  


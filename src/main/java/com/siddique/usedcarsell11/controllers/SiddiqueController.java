package com.siddique.usedcarsell11.controllers;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.siddique.usedcarsell11.entities.UsedCars;
import com.siddique.usedcarsell11.repositories.UsedCarsRepo;
import com.siddique.usedcarsell11.services.UsedCarService;

@Controller
public class SiddiqueController {
	@Autowired
	UsedCarsRepo UsedRepo;
	@Autowired
	UsedCarService usedService;
	@GetMapping("/")
	public String home(Model m) {
     List<UsedCars> list=usedService.getAllCars();
     Long totalcars= usedService.AccountCount();
     Long availableCars= usedService.carAvailable("AVAILABLE");
     Long unavailableCars= usedService.carAvailable("SOLD");
     double availablePercent = 0;
     double unavailablePercent = 0;

     if(totalcars > 0) {
         availablePercent = (availableCars * 100.0) / totalcars;
         unavailablePercent = (unavailableCars * 100.0) / totalcars;
     }

     m.addAttribute("carslist",list);
     m.addAttribute("Totalcars",totalcars);
     m.addAttribute("Availabelcars",availableCars);
     m.addAttribute("UnavailableCars",unavailableCars);
     m.addAttribute("availablePercent", availablePercent);
     m.addAttribute("unavailablePercent", unavailablePercent);


		return "index.jsp";
	}
	@GetMapping("/LoginPage")
	public String LoginPage() {
		return"Login.jsp";
	}
	@PostMapping("/Login")
	public String Login(String username,String password) {
		String page=" ";
		if(username.equals("siddique")&& password.equals("Siddique@5/7"))
			page="AdminPanel.jsp";
		else
			page="LoginFailed.jsp";
		
		return page;
	}
@GetMapping("/newcar")
public String newcar() {
	return"NewCarEntry.html";
}
@PostMapping("/savecar")
public String savecar(
        @ModelAttribute UsedCars car,
        @RequestParam("imageFile") MultipartFile file
) throws IOException {

    if (!file.isEmpty()) {
        String uploadDir = "src/main/resources/static/car-images";
        String fileName = file.getOriginalFilename();
        Path filePath = Paths.get(uploadDir + fileName);
        Files.write(filePath, file.getBytes());
        car.setImage_path("/car-images/" + fileName);
    }

    usedService.addNewUser(car);
    return "NewCarAdded.jsp";
}
@GetMapping("/deletecar")
public String deletecar() {
	return"Delete.html";
}
@PostMapping("/Delete")
public String Delete(int carid,Model m)
{   
	String msg=usedService.deleteById(carid);
	m.addAttribute("message",msg);
	return"DeleteSuccess.jsp";
	
}
@GetMapping("/admineditcar")
public String admineditcar(Model m){
	 List<UsedCars> list=usedService.getAllCars();
     m.addAttribute("carslist",list);
	return"AdminEditCar.jsp";
}
@GetMapping("/editCar")
public String editCar( int id, Model model) {
	 UsedCars car=usedService.getById(id);
    model.addAttribute("car", car);
    return "editCar.jsp";  
}
@PostMapping("/updateCar")
public String updatecar(UsedCars car,Model m) {
	m.addAttribute("Car",car);
	usedService.addNewUser(car);
	return "UpdateSuccess.jsp";
}
}

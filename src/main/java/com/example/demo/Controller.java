package com.example.demo;

import java.util.logging.Level;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import lombok.extern.java.Log;


@RestController
@RequestMapping("/demo")
@Log
public class Controller {



	@GetMapping("/health")
	public String health() {
		String returnStr = null;
System.out.println("cccc");
		try {
			log.log(Level.INFO, "demo : healthy");
			returnStr= new StringBuffer("demo : healthy").toString();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			log.log(Level.SEVERE," ",e);
		}
		
		return returnStr;
		
	}

}

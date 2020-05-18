package com.skilldistillery.pprLeaders;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class PprlAppApplication extends SpringBootServletInitializer {
	
	
	  @Override
	  protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
	    return application.sources(PprlAppApplication.class);
	  }
	

	public static void main(String[] args) {
		SpringApplication.run(PprlAppApplication.class, args);
	}

}

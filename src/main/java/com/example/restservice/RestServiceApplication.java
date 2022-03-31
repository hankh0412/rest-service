package com.example.restservice;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class RestServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(RestServiceApplication.class, args);

		System.out.println("Total Memory : "+Runtime.getRuntime().totalMemory());
		System.out.println("Free Memory : "+Runtime.getRuntime().freeMemory());
		System.out.println("Max Memory : "+Runtime.getRuntime().maxMemory());

	}

}

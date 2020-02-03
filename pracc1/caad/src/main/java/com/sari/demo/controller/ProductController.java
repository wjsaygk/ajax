package com.sari.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sari.demo.model.Product;
import com.sari.demo.repository.ProductRepository;

@Controller
public class ProductController {

	@Autowired
	ProductRepository pRepo;
	/*
	 * @GetMapping("/pro") public @ResponseBody List<Product> Product() {
	 * List<Product> products = pRepo.Pidsel(); return products; }
	 * 
	 * @GetMapping("/proid") public @ResponseBody List<Product> Productpid() {
	 * List<Product> products = pRepo.Pid(); return products; }
	 */
	
	@GetMapping("/home1")
	public String Home(Model model) {
		List<Product> products = pRepo.findAll();
		model.addAttribute("products", products);
		return "/test/product";
	}
	
	@GetMapping("/home2")
	public @ResponseBody List<Product> Home2() {
		List<Product> products = pRepo.findAll();

		return products;
	}
	
	@GetMapping("/kitchen")
	public @ResponseBody List<Product> Kitchen() {
		List<Product> products = pRepo.findKitchen();
		return products;
	}
	@GetMapping("/digital")
	public @ResponseBody List<Product> digital() {
		List<Product> products = pRepo.findDigital();
		return products;
	}
	
	@GetMapping("/beauty")
	public @ResponseBody List<Product> beauty() {
		List<Product> products = pRepo.findBeauty();
		return products;
	}
	
	@PostMapping("/price")
	public @ResponseBody List<Product> price(@RequestBody String currentType) {
		
		int pType = Integer.parseInt(currentType);
		
		System.out.println(pType);
		if(pType == -1) {
			List<Product> products = pRepo.findPriceAll();
			
			return products;
			
		}else { 
			List<Product> products = pRepo.findPrice(pType);
			
			return products;
		}
		
	}
	
	@PostMapping("/order")
	public @ResponseBody List<Product> Order(@RequestBody String currentType) {
		
		int pType = Integer.parseInt(currentType);
		
		System.out.println(pType);
		if(pType == -1) {
			List<Product> products = pRepo.findOrderAll();
			
			return products;
			
		}else { 
			List<Product> products = pRepo.findOrder(pType);
			
			return products;
		}
		
	}
	
}

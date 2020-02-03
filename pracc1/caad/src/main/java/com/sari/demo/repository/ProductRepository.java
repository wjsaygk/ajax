package com.sari.demo.repository;

import java.util.List;

import com.sari.demo.model.Product;

public interface ProductRepository {
            List<Product> Pidsel();
            List<Product> findAll();
            List<Product> Pid();
            List<Product> findKitchen();
            List<Product> findDigital();
            List<Product> findBeauty();
            List<Product> findPrice(int pType);
            List<Product> findPriceAll();
            
            List<Product> findOrder(int pType);
            List<Product> findOrderAll();
            
            
            
}

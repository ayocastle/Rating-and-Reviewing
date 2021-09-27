package com.daytoday.addratings.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.daytoday.addratings.entities.Product;

@Repository("productRepository")
public interface ProductRepository extends CrudRepository<Product, Integer>{

}

package com.daytoday.addratings.service;

import java.util.Optional;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.daytoday.addratings.entities.Product;

@Service
@Component
public interface ProductService {

	public Iterable<Product> findall();
	public Optional<Product> find(int id);
}

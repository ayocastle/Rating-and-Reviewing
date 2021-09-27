package com.daytoday.addratings.service;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.daytoday.addratings.entities.Product;
import com.daytoday.addratings.repository.ProductRepository;

@Service("productService")
@Transactional
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductRepository productRepository;
	@Override
	public Iterable<Product> findall() {
		return productRepository.findAll();
	}
	@Override
	public Optional<Product> find(int id) {
	
		return productRepository.findById(id);
	}

}

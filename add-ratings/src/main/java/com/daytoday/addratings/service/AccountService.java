package com.daytoday.addratings.service;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.daytoday.addratings.entities.Account;

@Service
@Component
public interface AccountService {

	public Account create(Account account);
	public Account Login(String Username,String Password);
	public Account findByUsername(String username); 
}

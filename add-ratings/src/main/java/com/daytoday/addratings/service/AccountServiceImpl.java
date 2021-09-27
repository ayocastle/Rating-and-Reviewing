package com.daytoday.addratings.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.daytoday.addratings.entities.Account;
import com.daytoday.addratings.repository.AccountRepository;

public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountRepository accountRepository;

	@Override
	public Account create(Account account) {

		return accountRepository.save(account);
	}

	@Override
	public Account Login(String username, String password) {

		return accountRepository.findByUsernameAndPassword(username, password);
	}

	@Override
	public Account findByUsername(String username) {
		return accountRepository.findByUsername(username);
	}	

}

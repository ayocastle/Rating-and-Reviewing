package com.daytoday.addratings.service;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.daytoday.addratings.entities.Review;
import com.daytoday.addratings.repository.ReviewRepository;
@Service("accountService")
@Transactional
public class ReviewServiceImpl implements ReviewService {

	private ReviewRepository reviewRepository;
	@Override
	public Review create(Review review) {
		return reviewRepository.save(review);
	}

}

package com.daytoday.addratings.entities;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.Table;

import net.bytebuddy.dynamic.DynamicType.Builder.FieldDefinition.Optional;

@Entity
@Table(name = "review")
public class Review implements java.io.Serializable {

	private Integer id;
	private Account account;
	private Product product;
	private String content;
	private Date datePost;
	private Float rating;

	public Review() {

	}

	public Review(Account account, Product product, String content, Date datePost, Float rating) {

		this.account = account;
		this.product = product;
		this.content = content;
		this.datePost = datePost;
		this.rating = rating;
	}


	public Account getAccount() {
		return account;
	}

	public void setAccount(Account account) {
		this.account = account;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDatePost() {
		return datePost;
	}

	public void setDatePost(Date date) {
		this.datePost = date;
	}

	public Float getRating() {
		return rating;
	}

	public void setRating(Float rating) {
		this.rating = rating;
	}

}

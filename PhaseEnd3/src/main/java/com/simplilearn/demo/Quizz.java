package com.simplilearn.demo;

import jakarta.persistence.Column; 
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity

public class Quizz {
	
	
	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private int quizid;
	private Integer questionid;
	
	
	
	public Quizz(int id, int quizid, Integer questionid) {
		super();
		this.id = id;
		this.quizid = quizid;
		this.questionid = questionid;
	}



	public Quizz() {
		super();
		// TODO Auto-generated constructor stub
	}



	public int getId() {
		return id;
	}



	public void setId(int id) {
		this.id = id;
	}



	public Integer getQuizid() {
		return quizid;
	}



	public void setQuizid(int quizid) {
		this.quizid = quizid;
	}



	public Integer getQuestionid() {
		return questionid;
	}



	public void setQuestionid(Integer questionid) {
		this.questionid = questionid;
	}



	@Override
	public String toString() {
		return "Quiz [id=" + id + ", quizid=" + quizid + ", questionid=" + questionid + "]";
	}
	
	
}
	

	
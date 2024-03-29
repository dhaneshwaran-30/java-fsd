package com.aadhar.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.aadhar.bean.Login;

@Repository
public interface LoginRepository extends JpaRepository<Login, String>{

}
package com.student.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import com.student.model.Voter;

public interface Voterdao extends JpaRepository<Voter, Integer> {

    Voter findByUsernameAndPassword(String username, String password);
}
package com.student.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.student.dao.Voterdao;
import com.student.model.Voter;

@Service
public class VoterService {

    @Autowired
    private Voterdao voterDao;

    public Voter saveVoter(Voter voter) {
        return voterDao.save(voter);
    }

    public Voter getVoterById(int id) {
        return voterDao.findById(id).orElse(null);
    }

    public List<Voter> findAll() {
        return voterDao.findAll();
    }

    public Voter updateVoter(Voter voter) {
        return voterDao.save(voter);
    }

    public void deleteVoter(int id) {
        voterDao.deleteById(id);
    }

    public Voter login(String username, String password) {
        return voterDao.findByUsernameAndPassword(username, password);
    }
}
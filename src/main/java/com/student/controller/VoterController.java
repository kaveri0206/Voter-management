package com.student.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.student.model.Voter;
import com.student.service.VoterService;

@Controller
public class VoterController {

    @Autowired
    private VoterService voterService;

    @GetMapping("/")
    public String index() {
        return "index";
    }

   
    @GetMapping("/login")
    public String loginPage() {
        return "login";
    }

    @GetMapping("/register")
    public String registerPage() {
        return "register";
    }
    
    @PostMapping("/login")
    public String login(@RequestParam String username,
                        @RequestParam String password,
                        Model model) {

        Voter voter = voterService.login(username, password);

        if (voter != null) {
            return "home";
        } else {
            model.addAttribute("msg", "Invalid Username or Password");
            return "login";
        }
    }
    
    

  
    @PostMapping("/saveVoter")
    public String saveVoter(@ModelAttribute Voter voter) {
        voterService.saveVoter(voter);
        return "redirect:/login";
    }

   
    @GetMapping("/viewAllVoters")
    public String viewAll(Model model) {

        List<Voter> list = voterService.findAll();

        // IMPORTANT: must match JSP variable name
        model.addAttribute("voters", list);

        return "viewAllVoters";
    }


   
    @GetMapping("/updateVoter")
    public String updatePage(@RequestParam int id, Model model) {

        Voter voter = voterService.getVoterById(id);
        model.addAttribute("voter", voter);

        return "updateVoter";
    }

    
    @PostMapping("/updateVoter")
    public String updateVoter(@ModelAttribute Voter voter) {

        voterService.updateVoter(voter);
        return "redirect:/viewAllVoters";
    }

   
    @GetMapping("/deleteVoter")
    public String deleteVoter(@RequestParam int id) {

        voterService.deleteVoter(id);
        return "redirect:/viewAllVoters";
    }
}
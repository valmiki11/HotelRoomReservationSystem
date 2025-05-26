package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.model.User;
import com.web.repo.UserRepository;

@Controller
public class AuthController {
    @Autowired private UserRepository userRepo;

    @RequestMapping("/login")
    public String loginPage() {
        return "login";
    }

    @RequestMapping("/signup")
    public String signupPage() {
        return "signup";
    }

    @PostMapping("/signup")
    public String register(User user) {
        userRepo.save(user);
        return "redirect:/login";
    }

    @PostMapping("/login1")
    public String doLogin(@ModelAttribute User user, Model model) {
    	User dbUser = userRepo.findByEmail(user.getEmail());
        if (dbUser != null && dbUser.getPassword().equals(user.getPassword())) {
            return "dashboard";
        } else {
            model.addAttribute("error", "Invalid Credentials");
            return "dashboard";
        }
    }
    @RequestMapping("/logout")
    public String loginPage1() {
        return "login";
    }
}


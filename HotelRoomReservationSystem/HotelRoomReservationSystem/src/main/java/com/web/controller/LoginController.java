package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.web.model.LoginRequest;
import com.web.model.User;
import com.web.repo.UserRepository;

import jakarta.validation.Valid;

@Controller
public class LoginController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("/login")
    public String showLoginForm(Model model) {
        model.addAttribute("loginRequest", new LoginRequest());
        return "login"; // JSP or Thymeleaf page name
    }

    @PostMapping("/login")
    public String loginUser(
            @Valid @ModelAttribute("loginRequest") LoginRequest loginRequest,
            BindingResult result, Model model) {

        if (result.hasErrors()) {
            return "login";
        }

        User user = userRepository.findByUsername(loginRequest.getUsername());

        // Compare plain text password
        if (user != null && user.getPassword().equals(loginRequest.getPassword())) {
            return "redirect:/dashboard";
        }

        model.addAttribute("loginError", "Invalid username or password");
        return "login";
    }

    @GetMapping("/dashboard")
    public String dashboard() {
        return "dashboard";
    }
}
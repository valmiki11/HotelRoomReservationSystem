package com.web.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.web.repo.GuestRepository;

@Controller
@RequestMapping("/guests")
public class GuestController {

    @Autowired
    private GuestRepository guestRepo;

    @GetMapping
    public String listGuests(Model model) {
        model.addAttribute("guests", guestRepo.findAll());
        return "guests";  // resolves to /WEB-INF/views/guests.jsp
    }
}

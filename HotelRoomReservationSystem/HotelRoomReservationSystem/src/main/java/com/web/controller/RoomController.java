package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.web.model.Room;
import com.web.repo.RoomRepository;

import java.util.List;

@Controller
@RequestMapping("/rooms")
public class RoomController {

    @Autowired
    private RoomRepository roomRepo;

    // Show all rooms: /rooms/r
    @GetMapping("/r")
    public String viewRooms(Model model) {
        List<Room> rooms = roomRepo.findAll();
        model.addAttribute("rooms", rooms);
        return "/rooms/r"; // This maps to /WEB-INF/views/rooms.jsp
    }

    // Add new room (POST)
    @PostMapping("/add")
    public String addRoom(@RequestParam String type) {
        Room room = new Room();
        room.setType(type);
        room.setAvailable(true);
        roomRepo.save(room);
        return "redirect:/rooms/r";
    }

    // Show booking form with available rooms
    @GetMapping("/create")
    public String showBookingForm(Model model) {
        List<Room> availableRooms = roomRepo.findByAvailable(true);
        model.addAttribute("rooms", availableRooms);
        return "create"; // create.jsp
    }
}
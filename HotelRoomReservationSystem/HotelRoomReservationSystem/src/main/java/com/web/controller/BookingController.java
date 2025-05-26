package com.web.controller;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.web.model.Booking;
import com.web.model.Room;
import com.web.repo.BookingRepository;
import com.web.repo.RoomRepository;

@Controller
@RequestMapping("/bookings")
public class BookingController {

    @Autowired
    private BookingRepository bookingRepo;

    @Autowired
    private RoomRepository roomRepo;

    private final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    // === Show Booking Form ===
    @GetMapping("/form")
    public String showBookingForm(Model model) {
        List<Room> allRooms = roomRepo.findAll();
        List<Room> availableRooms = roomRepo.findByAvailable(true);

        model.addAttribute("allRooms", allRooms);
        model.addAttribute("availableRooms", availableRooms);

        return "bookings"; // Uses bookings.jsp
    }
    // === View All Bookings ===
    @GetMapping
    public String viewBookings(Model model) {
        List<Booking> bookings = bookingRepo.findAll();
        model.addAttribute("bookings", bookings);
        return "view-bookings"; // This should match: /WEB-INF/views/view-bookings.jsp
    }

    // === Create New Booking ===
    @PostMapping("/create")
    public String createBooking(
            @RequestParam String guestName,
            @RequestParam String checkIn,
            @RequestParam String checkOut,
            @RequestParam Long roomId) {

        Booking booking = new Booking();
        booking.setGuestName(guestName);
        booking.setCheckInDate(LocalDate.parse(checkIn, formatter));
        booking.setCheckOutDate(LocalDate.parse(checkOut, formatter));
        booking.setRoomId(roomId);

        Room room = roomRepo.findById(roomId).orElse(null);
        if (room != null) {
            room.setAvailable(false);
            roomRepo.save(room);
        }

        bookingRepo.save(booking);

        return "redirect:/bookings/form"; // Redirect after POST
    }
}
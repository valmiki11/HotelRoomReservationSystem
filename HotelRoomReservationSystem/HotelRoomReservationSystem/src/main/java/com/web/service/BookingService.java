package com.web.service;

import java.util.List;

import com.web.model.Booking;

public interface BookingService {
    List<Booking> getAllBookings();
    Booking getBookingById(Long id);
    Booking createBooking(Booking booking);
    void cancelBooking(Long id);
}
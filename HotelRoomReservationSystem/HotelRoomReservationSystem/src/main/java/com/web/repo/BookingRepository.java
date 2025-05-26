package com.web.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.web.model.Booking;

public interface BookingRepository extends JpaRepository<Booking, Long> {}

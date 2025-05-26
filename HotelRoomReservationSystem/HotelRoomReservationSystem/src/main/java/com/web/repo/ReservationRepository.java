package com.web.repo;



import org.springframework.data.jpa.repository.JpaRepository;
import com.web.model.Reservation;

public interface ReservationRepository extends JpaRepository<Reservation, Long> {
    // You can add custom query methods here if needed
}

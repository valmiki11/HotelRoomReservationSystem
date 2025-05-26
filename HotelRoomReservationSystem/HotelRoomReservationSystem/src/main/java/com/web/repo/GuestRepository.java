package com.web.repo;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.web.model.Guest;

@Repository
public interface GuestRepository extends JpaRepository<Guest, Long> {
    // you can add custom query methods here if needed, for example:
    // List<Guest> findByLastName(String lastName);
}


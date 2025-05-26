package com.web.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.web.model.Room;

public interface RoomRepository extends JpaRepository<Room, Long> {
	List<Room> findByAvailable(boolean available);
}

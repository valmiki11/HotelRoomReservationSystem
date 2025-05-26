package com.web.service;

import java.util.List;

import com.web.model.Room;

public interface RoomService {
    List<Room> getAllRooms();
    Room getRoomById(Long id);
    Room saveRoom(Room room);
    void deleteRoom(Long id);
}
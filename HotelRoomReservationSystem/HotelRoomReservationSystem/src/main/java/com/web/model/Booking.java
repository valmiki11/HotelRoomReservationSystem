package com.web.model;
import jakarta.persistence.*;

import java.time.LocalDate;

@Entity
public class Booking {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Long userId;
    private Long roomId;
    private String guestname;
    private LocalDate checkInDate;
    private LocalDate checkOutDate;
	public Booking() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Booking(Long id, Long userId, Long roomId,String guestname, LocalDate checkInDate, LocalDate checkOutDate) {
		super();
		this.id = id;
		this.userId = userId;
		this.roomId = roomId;
		this.guestname=guestname;
		this.checkInDate = checkInDate;
		this.checkOutDate = checkOutDate;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getRoomId() {
		return roomId;
	}
	public void setRoomId(Long roomId) {
		this.roomId = roomId;
	}
	public String getGuestName() {
		return guestname;
	}
	public void setGuestName(String guestname) {
		this.guestname=guestname;
	}
	public LocalDate getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(LocalDate checkInDate) {
		this.checkInDate = checkInDate;
	}
	public LocalDate getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(LocalDate checkOutDate) {
		this.checkOutDate = checkOutDate;
	}

    // getters and setters...
}

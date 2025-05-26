package com.web.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.web.model.User;
public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
    User findByUsername(String Username);
}
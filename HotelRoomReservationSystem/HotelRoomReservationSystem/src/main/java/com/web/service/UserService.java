package com.web.service;
import java.util.List;

import com.web.model.User;

public interface UserService {
    List<User> getAllUsers();
    User getUserById(Long id);
    User createUser(User user);
    void deleteUser(Long id);
}
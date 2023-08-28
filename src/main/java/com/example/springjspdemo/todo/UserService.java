package com.example.springjspdemo.todo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional; // Import the Transactional annotation
import org.springframework.util.StringUtils;

import com.example.springjspdemo.model.User;
import com.example.springjspdemo.repository.UserRepository;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    @Transactional // Add this annotation
    @SuppressWarnings("deprecation")
    public boolean registerUser(User user) {
        if (StringUtils.isEmpty(user.getUserId())) {
            return false;
        }
        if (userRepository.findByUserId(user.getUserId()) != null) {
            return false;
        }
        userRepository.save(user);
        return true;
    }
}

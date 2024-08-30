package com.example.demo1.service;

import com.example.demo1.moodel.User;
import com.example.demo1.repository.IUserRepository;
import com.example.demo1.repository.UserRepository;

import java.sql.SQLException;
import java.util.Collections;
import java.util.List;

public class UserService implements IUserService {
    IUserRepository userRepository = new UserRepository();

    @Override
    public void insertUser(User user) throws SQLException {
        userRepository.insertUser(user);
    }

    @Override
    public User selectUser(int id) {
        return userRepository.selectUser(id);
    }

    @Override
    public List<User> selectAllUsers() {
        return userRepository.selectAllUsers();
    }

    @Override
    public boolean deleteUser(int id) throws SQLException {
        return userRepository.deleteUser(id);
    }

    @Override
    public boolean updateUser(User user) throws SQLException {
        return userRepository.updateUser(user);
    }

    @Override
    public List<User> selectUserByCountry(String search) {
        return userRepository.selectUserByCountry(search);
    }
}

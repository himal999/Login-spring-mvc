/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.epic.login.service.impl;

import edu.epic.login.entity.User;
import edu.epic.login.repo.LoginRepo;
import edu.epic.login.service.LoginService;

import java.util.Calendar;

import java.util.List;
import java.util.Optional;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author himal
 */
@Service
@Transactional
public class LoginServiceImpl implements LoginService {

    @Autowired
    LoginRepo loginRepo;

    private List<User> allUser;

    @Override
    public boolean isValidUserName(String userName) {

        allUser = loginRepo.findAll();

        if (!allUser.isEmpty()) {

            for (User temp : allUser) {

                if (temp.getUsername().equals(userName)) {

                    return true;
                }
            }
        }
        return false;

    }

    @Override
    public Optional<User> isValidLogin(User user) {

        Optional<User> findUser = loginRepo.findById(user.getUsername());

        if (findUser.get().getUsername().equalsIgnoreCase(user.getUsername()) && findUser.get().getPassword().equalsIgnoreCase(user.getPassword())) {

            if (loginRepo.logIn(Calendar.getInstance().getTime(), user.getUsername()) > 0) {
                return findUser;

            }

        }
        return null;
    }

    @Override
    public boolean isAlredyNic(String nic) {
        allUser = loginRepo.findAll();

        if (!allUser.isEmpty()) {

            for (User temp : allUser) {

                if (temp.getNic().equalsIgnoreCase(nic)) {

                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public boolean isAlredyEmail(String email) {
        allUser = loginRepo.findAll();

        if (!allUser.isEmpty()) {

            for (User temp : allUser) {

                if (temp.getEmail().equalsIgnoreCase(email)) {

                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public User isCreateUser(User user) {

        User temp = new User(user.getUsername(), user.getPassword(), user.getFname(), user.getLname(), user.getNic(), user.getAddress(), user.getDob(), user.getEmail(), Calendar.getInstance().getTime(), Calendar.getInstance().getTime(), Calendar.getInstance().getTime(), Calendar.getInstance().getTime());

        return loginRepo.save(temp);

    }

}

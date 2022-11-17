/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.epic.login.service;

import edu.epic.login.entity.User;
import edu.epic.login.repo.LoginRepo;
import java.util.List;
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

    @Override
    public boolean isValidUserName(String userName) {
        
        List<User> allUser = loginRepo.findAll();
        
        System.out.println("get");
        
        if (!allUser.isEmpty()) {
            System.out.println("hello");
            for (User temp : allUser) {
                System.out.println("hhhh");
                if (temp.getUsername().equals(userName)) {
                    System.out.println("here");
                    return true;
                }
            }
        }
        return false;

    }

}

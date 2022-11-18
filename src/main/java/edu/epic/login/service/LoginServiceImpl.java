/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.epic.login.service;


import edu.epic.login.entity.User;
import edu.epic.login.repo.LoginRepo;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
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

    @Override
    public boolean isValidUserName(String userName) {

        List<User> allUser = loginRepo.findAll();

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
            
  
            return findUser;
        }
        return null;
    }

    @Override
    public boolean isAlredyNic(String nic) {
        List<User> allUser = loginRepo.findAll();

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
        List<User> allUser = loginRepo.findAll();

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

        Date time = Calendar.getInstance().getTime();

      
        User temp = new User(user.getUsername(), user.getPassword(), user.getFname(), user.getLname(), user.getNic(), user.getAddress(), user.getDob(), user.getEmail(), time, time, time, time);
  
        return loginRepo.save(temp);

    }

}

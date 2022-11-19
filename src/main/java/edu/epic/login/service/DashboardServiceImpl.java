/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.epic.login.service;

import edu.epic.login.entity.User;
import edu.epic.login.repo.DashboardRepo;
import java.util.Calendar;
import java.util.Date;
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
public class DashboardServiceImpl implements DashboardService {

    @Autowired
    DashboardRepo dashboardRepo;

    @Override
    public boolean logOut(String userName) {
        Date time = Calendar.getInstance().getTime();

        return dashboardRepo.logOut(time, userName) > 0;
    }

    @Override
    public boolean dropUser(String userName) {
        dashboardRepo.deleteById(userName);

        return true;
    }

    @Override
    public boolean editUser(User user, String userName) {

        Date time = Calendar.getInstance().getTime();
       
            
        return dashboardRepo.updateUser(user.getUsername(), user.getFname(), user.getLname(), user.getNic(), user.getAddress(), user.getDob(), time, userName)>0;

    }

}

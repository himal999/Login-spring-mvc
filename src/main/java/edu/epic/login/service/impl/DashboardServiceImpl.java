/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.epic.login.service.impl;

import edu.epic.login.entity.User;
import edu.epic.login.repo.DashboardRepo;
import edu.epic.login.service.DashboardService;
import java.util.Calendar;

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

        return dashboardRepo.logOut(Calendar.getInstance().getTime(), userName) > 0;
    }

    @Override
    public boolean dropUser(String userName) {
        dashboardRepo.deleteById(userName);

        return true;
    }

    @Override
    public boolean editUser(User user, String userName) {

        return dashboardRepo.updateUser(user.getUsername(), user.getFname(), user.getLname(), user.getNic(), user.getAddress(), user.getDob(), Calendar.getInstance().getTime(), userName) > 0;

    }

}

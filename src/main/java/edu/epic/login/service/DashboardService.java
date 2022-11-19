/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package edu.epic.login.service;

import edu.epic.login.entity.User;

/**
 *
 * @author himal
 */
public interface DashboardService {
    boolean logOut(String userName);
    boolean dropUser(String userName);
    boolean editUser(User user,String userName);
}

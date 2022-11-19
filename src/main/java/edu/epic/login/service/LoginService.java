/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package edu.epic.login.service;

import edu.epic.login.entity.User;
import java.util.Optional;

/**
 *
 * @author himal
 */
public interface LoginService {
    boolean isValidUserName(String userName);
    boolean isAlredyNic(String nic);
    boolean isAlredyEmail(String email);
    Optional<User> isValidLogin(User user);
    User isCreateUser(User user);
    
}

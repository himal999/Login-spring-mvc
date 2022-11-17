/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package edu.epic.login.repo;

import edu.epic.login.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author himal
 */
public interface LoginRepo extends JpaRepository<User,String> {
    
}

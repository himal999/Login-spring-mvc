/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package edu.epic.login.repo;

import edu.epic.login.entity.User;
import java.util.Date;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author himal
 */
public interface LoginRepo extends JpaRepository<User, String> {

    @Modifying
    @Query(value = "UPDATE user_detail u SET acc_last_login =? WHERE u.username = ?", nativeQuery = true)
    int logIn(Date acc_last_login, String username);

}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package edu.epic.login.repo;

import edu.epic.login.entity.User;
import java.time.LocalDate;
import java.util.Date;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;


/**
 *
 * @author himal
 */
public interface DashboardRepo extends JpaRepository<User,String> {
    @Modifying
    @Query(value="UPDATE user_detail u SET acc_last_logout =? WHERE u.username = ?",nativeQuery = true)
    int logOut(Date acc_last_logout,String username);
    @Modifying
    @Query(value="UPDATE user_detail u SET username =?,fname=?,lname=?,nic=?,address=?,dob=?,acc_update_info=? WHERE u.username = ?",nativeQuery = true)
    int updateUser(String username,String fname,String lname,String nic,String address,LocalDate dob,Date acc_update_info,String user);
}

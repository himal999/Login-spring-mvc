/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.epic.login.dto;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 *
 * @author himal
 */
@AllArgsConstructor
@Data
@NoArgsConstructor
@ToString
public class UserDto {

    private String username;
    private String password;
    private String fname;
    private String lname;
    private String nic;
    private String address;
    private Date dob;
    private String email;
    private String accCreateInfo;
    private String accUpdateInfo;
    private String accLastLoginInfo;
    private String accLastLogoutInfo;
}


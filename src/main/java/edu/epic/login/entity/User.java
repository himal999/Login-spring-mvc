
package edu.epic.login.entity;

import java.sql.Blob;
import java.time.LocalDate;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;



/**
 *
 * @author himal
 */
@Entity(name = "user_detail")
public class User {

    @Id
    private String username;
    @Column(nullable = false)
    private String password;
    private String fname;
    private String lname;
    @Column(unique = true)
    private String nic;
    private String address;
    private LocalDate dob;
    @Column(unique = false)
    private String email;
    @Column(name = "acc_create_info", nullable = false)
    private Date accCreateInfo;
    @Column(name = "acc_update_info", nullable = false)
    private Date accUpdateInfo;
    @Column(name = "acc_last_login", nullable = false)
    private Date accLastLoginInfo;
    @Column(name = "acc_last_logout", nullable = false)
    private Date accLastLogoutInfo;

   

    public User() {
    }

    public User(String username, String password, String fname, String lname, String nic, String address, LocalDate dob, String email, Date accCreateInfo, Date accUpdateInfo, Date accLastLoginInfo, Date accLastLogoutInfo) {
        this.username = username;
        this.password = password;
        this.fname = fname;
        this.lname = lname;
        this.nic = nic;
        this.address = address;
        this.dob = dob;
        this.email = email;
        this.accCreateInfo = accCreateInfo;
        this.accUpdateInfo = accUpdateInfo;
        this.accLastLoginInfo = accLastLoginInfo;
        this.accLastLogoutInfo = accLastLogoutInfo;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public LocalDate getDob() {
        return dob;
    }

    public void setDob(LocalDate dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Date getAccCreateInfo() {
        return accCreateInfo;
    }

    public void setAccCreateInfo(Date accCreateInfo) {
        this.accCreateInfo = accCreateInfo;
    }

    public Date getAccUpdateInfo() {
        return accUpdateInfo;
    }

    public void setAccUpdateInfo(Date accUpdateInfo) {
        this.accUpdateInfo = accUpdateInfo;
    }

    public Date getAccLastLoginInfo() {
        return accLastLoginInfo;
    }

    public void setAccLastLoginInfo(Date accLastLoginInfo) {
        this.accLastLoginInfo = accLastLoginInfo;
    }

    public Date getAccLastLogoutInfo() {
        return accLastLogoutInfo;
    }

    public void setAccLastLogoutInfo(Date accLastLogoutInfo) {
        this.accLastLogoutInfo = accLastLogoutInfo;
    }

    @Override
    public String toString() {
        return "User{" + "username=" + username + ", password=" + password + ", fname=" + fname + ", lname=" + lname + ", nic=" + nic + ", address=" + address + ", dob=" + dob + ", email=" + email + ", accCreateInfo=" + accCreateInfo + ", accUpdateInfo=" + accUpdateInfo + ", accLastLoginInfo=" + accLastLoginInfo + ", accLastLogoutInfo=" + accLastLogoutInfo + '}';
    }

  

  

}

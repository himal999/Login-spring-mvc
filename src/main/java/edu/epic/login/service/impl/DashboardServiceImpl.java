/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.epic.login.service.impl;

import edu.epic.login.entity.User;
import edu.epic.login.repo.DashboardRepo;
import edu.epic.login.service.DashboardService;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.transaction.Transactional;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
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

    @Override
    public byte[] getUserReport(String userName) {

        byte[] data = null;

        try {
            List<User> user = new ArrayList();
            HashMap<String, Object> map = new HashMap();

            Optional<User> findUser = dashboardRepo.findById(userName);

            user.add(new User(findUser.get().getUsername(), findUser.get().getFname(), findUser.get().getLname(), findUser.get().getNic(), findUser.get().getAddress(), findUser.get().getDob(), findUser.get().getEmail()));

            JasperPrint report = JasperFillManager.fillReport(JasperCompileManager.compileReport(new FileInputStream("/home/himal/MyCompany/spingMVC/src/main/resources/user.jrxml")), map, new JRBeanCollectionDataSource(user));

            data = JasperExportManager.exportReportToPdf(report);
         
            

        } catch (Exception e) {
          e.getStackTrace();
        }

        return data;

    }

}

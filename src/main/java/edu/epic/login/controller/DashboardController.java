package edu.epic.login.controller;

import edu.epic.login.entity.User;
import edu.epic.login.service.DashboardService;
import edu.epic.login.util.Response;

import java.io.FileNotFoundException;
import java.time.LocalDate;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import net.sf.jasperreports.engine.JRException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author himal
 */
@RestController
@RequestMapping
@CrossOrigin
public class DashboardController {

    @Autowired
    DashboardService dashboardService;

    private HttpSession session;

    @GetMapping(path = "exit", produces = MediaType.APPLICATION_JSON_VALUE)
    public Response existsUser(HttpServletRequest req) {
        session = req.getSession();
        if (dashboardService.logOut((String) session.getAttribute("username"))) {
            session.removeAttribute("username");
            session.invalidate();
            return new Response(200, "ok", true);
        } else {
            return new Response(200, "ok", false);
        }

    }

    @GetMapping(path = "drop", produces = MediaType.APPLICATION_JSON_VALUE)
    public Response dropUser(HttpServletRequest req) {
        session = req.getSession();

        if (dashboardService.dropUser((String) session.getAttribute("username"))) {
            session.removeAttribute("username");
            session.invalidate();
            return new Response(200, "ok", true);
        } else {
            return new Response(200, "ok", false);
        }
    }

    @PostMapping(path = "update", produces = MediaType.APPLICATION_JSON_VALUE)
    public Response updateUser(@RequestBody User user, HttpServletRequest req) {
        session = req.getSession();
        if (dashboardService.editUser(user, (String) session.getAttribute("username"))) {
            session.setAttribute("username", user.getUsername());
            session.setAttribute("user", user);
            return new Response(200, "ok", true);
        } else {
            return new Response(200, "ok", false);
        }

    }

    @GetMapping(path = "/report")
    public ResponseEntity<byte[]> reportGenarator(HttpServletRequest req) throws FileNotFoundException, JRException {

        byte[] userReport = dashboardService.getUserReport(req.getSession().getAttribute("username").toString());
    

        HttpHeaders header = new HttpHeaders();

        header.set(HttpHeaders.CONTENT_DISPOSITION, "inline;filename=" +req.getSession().getAttribute("username").toString()+" "+LocalDate.now() + ".pdf");

        return ResponseEntity.ok().headers(header).contentType(MediaType.APPLICATION_PDF).body(userReport);

    }

}

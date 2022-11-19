package edu.epic.login.controller;

import edu.epic.login.entity.User;
import edu.epic.login.service.DashboardService;
import edu.epic.login.util.Response;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

    @GetMapping(path = "exit", produces = MediaType.APPLICATION_JSON_VALUE)
    public Response existsUser(HttpServletRequest req) {
        HttpSession session = req.getSession();
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
        HttpSession session = req.getSession();
        Object attribute = session.getAttribute("username");
        System.out.println(attribute);
        if (dashboardService.dropUser((String) session.getAttribute("username"))) {
            session.removeAttribute("username");
            session.invalidate();
            return new Response(200, "ok", true);
        } else {
            return new Response(200, "ok", false);
        }
    }
    
    @PostMapping(path="update",produces = MediaType.APPLICATION_JSON_VALUE)
    public Response updateUser(@RequestBody  User user, HttpServletRequest req) {
        HttpSession session = req.getSession();
        if (dashboardService.editUser(user, (String) session.getAttribute("username"))) {
            session.setAttribute("username",user.getUsername());
            session.setAttribute("user", user);
            return new Response(200, "ok", true);
        } else {
            return new Response(200, "ok", false);
        }

    }

}

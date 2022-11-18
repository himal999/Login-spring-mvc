package edu.epic.login.controller;


import edu.epic.login.entity.User;
import edu.epic.login.service.LoginService;
import edu.epic.login.util.Response;
import java.util.Optional;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author himal
 */
@RestController
@RequestMapping("login")
@CrossOrigin
public class LoginController {

    @Autowired
    LoginService loginService;

    //checking user name
    @GetMapping(params = {"username"}, produces = MediaType.APPLICATION_JSON_VALUE)
    public Response checkValidUserName(@RequestParam("username") String userName) {

        if (loginService.isValidUserName(userName)) {
            return new Response(200, "ok", true);
        } else {
            return new Response(200, "ok", false);

        }

    }

    //checking alredy email nic
    @GetMapping(params = {"nic"}, produces = MediaType.APPLICATION_JSON_VALUE)
    public Response checkAlreayExistsNic(@RequestParam("nic") String nic) {

        if (loginService.isAlredyNic(nic)) {
            return new Response(200, "ok", true);
        } else {
            return new Response(200, "ok", false);

        }

    }

    //checking alredy email address
    @GetMapping(params = {"email"}, produces = MediaType.APPLICATION_JSON_VALUE)
    public Response checkAlreayExistsEmail(@RequestParam("email") String email) {
        System.out.println("emial");
        if (loginService.isAlredyEmail(email)) {
            return new Response(200, "ok", true);
        } else {
            return new Response(200, "ok", false);

        }

    }

    //checking login
    @PostMapping(produces = MediaType.APPLICATION_JSON_VALUE)
    public Response validLogin(@RequestBody User user, HttpServletRequest req) {
        Optional<User> validUser = loginService.isValidLogin(user);

        if (validUser == null) {
            return new Response(200, "ok", false);
        } else {

            HttpSession session = req.getSession();
            session.setAttribute("username", user.getUsername());
            session.setAttribute("user", validUser);
            return new Response(200, "ok", true);

        }
    }

    //checking add new user
    @PostMapping(path = "/new", produces = MediaType.APPLICATION_JSON_VALUE)
    public Response createUser(@RequestBody User user, HttpServletRequest req) {

        
        
        User newUser = loginService.isCreateUser(user);

        HttpSession session = req.getSession();
        session.setAttribute("username", newUser.getUsername());
        session.setAttribute("user", newUser);
        return new Response(200, "ok", true);

    }

}

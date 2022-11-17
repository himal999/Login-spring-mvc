package edu.epic.login.controller;

import edu.epic.login.service.LoginService;
import edu.epic.login.util.Response;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
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

    @GetMapping(params = {"username"}, produces = MediaType.APPLICATION_JSON_VALUE)
    public Response checkValidUserName(@RequestParam("username") String userName) {

        if (loginService.isValidUserName(userName)) {
            return new Response(200, "ok", true);
        } else {
            return new Response(200, "ok", false);

        }

    }

}

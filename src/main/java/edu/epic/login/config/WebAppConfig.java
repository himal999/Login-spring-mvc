
package edu.epic.login.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

/**
 *
 * @author himal
 */
@Configuration
@EnableWebMvc
@ComponentScan(basePackages = {"edu.epic.login"})
public class WebAppConfig {
    
}

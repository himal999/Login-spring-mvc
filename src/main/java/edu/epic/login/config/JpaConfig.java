/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package edu.epic.login.config;

import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.Database;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

/**
 *
 * @author himal
 */
@Configuration

@EnableJpaRepositories(basePackages = "edu.epic.login.repo")
@EnableTransactionManagement
@PropertySource("classpath:application.properties")
public class JpaConfig {

    @Autowired
    Environment env;

    @Bean
    public LocalContainerEntityManagerFactoryBean entityManagerFactory(DataSource ds, JpaVendorAdapter va) {
        LocalContainerEntityManagerFactoryBean containerEntityManagerFactoryBean = new LocalContainerEntityManagerFactoryBean();
        containerEntityManagerFactoryBean.setDataSource(ds);
        containerEntityManagerFactoryBean.setJpaVendorAdapter(va);
        containerEntityManagerFactoryBean.setPackagesToScan(env.getRequiredProperty("app.entity.packageName"));
        return containerEntityManagerFactoryBean;
    }

    @Bean
    public DataSource dataSource() {

        BasicDataSource basicDataSource = new BasicDataSource();
        basicDataSource.setUsername(env.getRequiredProperty("app.db.userName"));
        basicDataSource.setPassword(env.getRequiredProperty("app.db.password"));
        basicDataSource.setUrl(env.getRequiredProperty("app.db.url"));
        basicDataSource.setDriverClassName(env.getRequiredProperty("app.db.driverClass"));

        return basicDataSource;

    }

    @Bean
    public JpaVendorAdapter jpaVendorAdapter() {
        HibernateJpaVendorAdapter hibernateJpaVendorAdapter = new HibernateJpaVendorAdapter();
        hibernateJpaVendorAdapter.setDatabasePlatform(env.getRequiredProperty("app.hibernate.platform"));
        hibernateJpaVendorAdapter.setDatabase(Database.MYSQL);
        hibernateJpaVendorAdapter.setShowSql(true);
        hibernateJpaVendorAdapter.setGenerateDdl(true);
        return hibernateJpaVendorAdapter;
    }

    @Bean
    public PlatformTransactionManager transactionManager(EntityManagerFactory emf) {
        return new JpaTransactionManager(emf);
    }
}

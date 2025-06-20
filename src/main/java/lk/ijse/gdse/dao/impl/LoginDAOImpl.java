package lk.ijse.gdse.dao.impl;

import lk.ijse.gdse.dao.LoginDAO;

import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginDAOImpl implements LoginDAO {

    private final BasicDataSource dataSource;

    public LoginDAOImpl(BasicDataSource dataSource) {
        this.dataSource = dataSource;
    }


}

package lk.ijse.gdse.dao.impl;

import lk.ijse.gdse.dao.AdminDAO;
import lk.ijse.gdse.dto.ComplaintDTO;
import org.apache.commons.dbcp2.BasicDataSource;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class AdminDAOImpl implements AdminDAO {

    private final BasicDataSource dataSource;
    public AdminDAOImpl(BasicDataSource dataSource) {
        this.dataSource = dataSource;
    }

}

package lk.ijse.gdse.controller;


import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lk.ijse.gdse.dao.AdminDAO;
import lk.ijse.gdse.dao.ComplaintDAO;
import lk.ijse.gdse.dao.impl.AdminDAOImpl;
import lk.ijse.gdse.dao.impl.ComplaintDAOImpl;
import lk.ijse.gdse.dto.ComplaintDTO;
import lk.ijse.gdse.dto.UserDTO;
import org.apache.commons.dbcp2.BasicDataSource;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminServlet", value = "/Admin")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ServletContext servletContext = req.getServletContext();
        BasicDataSource bds = (BasicDataSource) servletContext.getAttribute("dataSource");

        AdminDAO adminDAO = new AdminDAOImpl(bds);
        List<ComplaintDTO> complaints;
        try{
            String status = req.getParameter("search");
            if(status != null && (status.equals("success") || status.equals("fail") || status.equals("error"))) {
                complaints = adminDAO.getAllComplaints();
                req.setAttribute("status", status);
            } else if (status != null && !status.isEmpty()) {
                complaints = adminDAO.getComplaintsByStatus(status);
            } else {
                complaints = adminDAO.getAllComplaints();
            }
            req.setAttribute("complaints", complaints);
            req.getRequestDispatcher("AdminDashboard.jsp").forward(req,resp);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

}
package com.example.baitap.Controller;

import com.example.baitap.service.CustomerService;
import com.example.baitap.service.ICustomerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/customer" )
public class CustomerController extends HttpServlet {
    ICustomerService customerService = new CustomerService();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("listCustomer",customerService.findAll());
        request.getRequestDispatcher("/index.jsp").forward(request,response);
    }
}

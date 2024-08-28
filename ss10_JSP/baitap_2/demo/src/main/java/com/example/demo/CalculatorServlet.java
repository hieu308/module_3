package com.example.demo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/calculator-servlet")
public class CalculatorServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        float number1 = Float.parseFloat(req.getParameter("n1"));
        float number2 = Float.parseFloat(req.getParameter("n2"));
        char operator = req.getParameter("operator").charAt(0);
        float result = Calculator.calculator(number1,number2,operator);
        req.setAttribute("result", result);
        req.getRequestDispatcher("/calculationResult.jsp").forward(req, resp);
    }
}

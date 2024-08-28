package com.example.demo;

public class Calculator {
    public static float calculator(float number1, float number2, char operator) {
        switch (operator) {
            case '+':
                return number1 + number2;
            case '-':
                return number1 - number2;
            case '*':
                return number1 * number2;
            case '/':
                if (number2 != 0) {
                    return number1 / number2;
                } else {
                    throw new ArithmeticException("Division by zero");
                }
            default:
                throw new ArithmeticException("Invalid operation");
        }
    }

}

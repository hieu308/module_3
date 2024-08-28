package com.example.baitap.repo;

import com.example.baitap.model.Customer;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class CustomerRepository implements ICustomerRepository {
    static List<Customer> customerList = new ArrayList<>();
    static {
        customerList.add(new Customer("CONG CONG", LocalDate.parse("1992-02-02"), "dong ban to"));
        customerList.add(new Customer("CONG CONG", LocalDate.parse("1992-02-02"), "dong ban to"));
        customerList.add(new Customer("CONG CONG", LocalDate.parse("1992-02-02"), "dong ban to"));
        customerList.add(new Customer("CONG CONG", LocalDate.parse("1992-02-02"), "dong ban to"));
        customerList.add(new Customer("CONG CONG", LocalDate.parse("1992-02-02"), "dong ban to"));
    }

    @Override
    public List<Customer> findAll() {
        return customerList;
    }
}

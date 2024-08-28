package com.example.baitap.repo;

import com.example.baitap.model.Customer;

import java.util.List;

public interface ICustomerRepository {
     List<Customer> findAll();
}

package com.example.baitap.service;

import com.example.baitap.model.Customer;
import com.example.baitap.repo.CustomerRepository;
import com.example.baitap.repo.ICustomerRepository;

import java.util.Collections;
import java.util.List;

public class CustomerService implements ICustomerService{
   ICustomerRepository customerRepository = new CustomerRepository();

    @Override
    public List<Customer> findAll() {
       return customerRepository.findAll();
    }
}

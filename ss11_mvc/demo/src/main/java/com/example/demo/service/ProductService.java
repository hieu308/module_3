package com.example.demo.service;

import com.example.demo.Repo.IProductRepo;
import com.example.demo.Repo.ProductRepo;
import com.example.demo.model.Product;

import java.util.Collections;
import java.util.List;

public class ProductService implements IProductService {
    IProductRepo productRepo = new ProductRepo();

    @Override
    public List<Product> findAll() {
        return productRepo.findAll();
    }
    @Override
    public void add(Product product) {
        productRepo.add(product);
    }
    @Override
    public void update(int id, Product product) {
        productRepo.update(id, product);
    }
    @Override
    public void delete(int id) {
        productRepo.delete(id);
    }
    @Override
    public Product findById(int id) {
        return productRepo.findById(id);
    }
}
